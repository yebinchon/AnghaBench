; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/oseama/src/extr_oseama.c_oseama_entity_write_hdr.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/oseama/src/extr_oseama.c_oseama_entity_write_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seama_entity_header = type { i8*, i32, i8*, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@SEAMA_MAGIC = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Couldn't write Seama entity header to %s\0A\00", align 1
@seama_path = common dso_local global i8* null, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64)* @oseama_entity_write_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oseama_entity_write_hdr(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.seama_entity_header, align 8
  %9 = alloca [128 x i32], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = bitcast %struct.seama_entity_header* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = load i64, i64* %7, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = add i64 32, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @SEEK_SET, align 4
  %20 = call i32 @fseek(i32* %15, i32 %18, i32 %19)
  %21 = call i32 @MD5_Init(i32* %12)
  br label %22

22:                                               ; preds = %29, %3
  %23 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 0
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @oseama_min(i32 512, i64 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @fread(i32* %23, i32 1, i32 %25, i32* %26)
  store i64 %27, i64* %11, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 0
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @MD5_Update(i32* %12, i32* %30, i64 %31)
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %10, align 8
  %35 = sub i64 %34, %33
  store i64 %35, i64* %10, align 8
  br label %22

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.seama_entity_header, %struct.seama_entity_header* %8, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @MD5_Final(i32 %38, i32* %12)
  %40 = load i64, i64* @SEAMA_MAGIC, align 8
  %41 = call i8* @cpu_to_be32(i64 %40)
  %42 = getelementptr inbounds %struct.seama_entity_header, %struct.seama_entity_header* %8, i32 0, i32 2
  store i8* %41, i8** %42, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @cpu_to_be16(i64 %43)
  %45 = getelementptr inbounds %struct.seama_entity_header, %struct.seama_entity_header* %8, i32 0, i32 1
  store i32 %44, i32* %45, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i8* @cpu_to_be32(i64 %46)
  %48 = getelementptr inbounds %struct.seama_entity_header, %struct.seama_entity_header* %8, i32 0, i32 0
  store i8* %47, i8** %48, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @SEEK_SET, align 4
  %51 = call i32 @fseek(i32* %49, i32 0, i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call i64 @fwrite(%struct.seama_entity_header* %8, i32 1, i32 32, i32* %52)
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp ne i64 %54, 32
  br i1 %55, label %56, label %62

56:                                               ; preds = %36
  %57 = load i32, i32* @stderr, align 4
  %58 = load i8*, i8** @seama_path, align 8
  %59 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %63

62:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %56
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fseek(i32*, i32, i32) #2

declare dso_local i32 @MD5_Init(i32*) #2

declare dso_local i64 @fread(i32*, i32, i32, i32*) #2

declare dso_local i32 @oseama_min(i32, i64) #2

declare dso_local i32 @MD5_Update(i32*, i32*, i64) #2

declare dso_local i32 @MD5_Final(i32, i32*) #2

declare dso_local i8* @cpu_to_be32(i64) #2

declare dso_local i32 @cpu_to_be16(i64) #2

declare dso_local i64 @fwrite(%struct.seama_entity_header*, i32, i32, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
