; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rawsock-pcapfile.c_pcapfile_openwrite.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rawsock-pcapfile.c_pcapfile_openwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PcapFile = type { i32, i32, i32*, i32 }

@__const.pcapfile_openwrite.buf = private unnamed_addr constant [25 x i8] c"\D4\C3\B2\A1\02\00\04\00\00\00\00\00\00\00\00\00\FF\FF\00\00i\00\00\00\00", align 16
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not open capture file\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Could not write capture file header\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CAPFILE_LITTLEENDIAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.PcapFile* @pcapfile_openwrite(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.PcapFile*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [25 x i8], align 16
  %7 = alloca i32*, align 8
  %8 = alloca %struct.PcapFile*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast [25 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([25 x i8], [25 x i8]* @__const.pcapfile_openwrite.buf, i32 0, i32 0), i64 25, i1 false)
  %10 = load i32, i32* %5, align 4
  %11 = lshr i32 %10, 0
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 20
  store i8 %12, i8* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = lshr i32 %14, 8
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 21
  store i8 %16, i8* %17, align 1
  %18 = load i8*, i8** %4, align 8
  %19 = call i32* @fopen(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @perror(i8* %25)
  store %struct.PcapFile* null, %struct.PcapFile** %3, align 8
  br label %64

27:                                               ; preds = %2
  %28 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 0
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @fwrite(i8* %28, i32 1, i32 24, i32* %29)
  %31 = icmp ne i32 %30, 24
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @perror(i8* %35)
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @fclose(i32* %37)
  store %struct.PcapFile* null, %struct.PcapFile** %3, align 8
  br label %64

39:                                               ; preds = %27
  store %struct.PcapFile* null, %struct.PcapFile** %8, align 8
  %40 = call i64 @malloc(i32 24)
  %41 = inttoptr i64 %40 to %struct.PcapFile*
  store %struct.PcapFile* %41, %struct.PcapFile** %8, align 8
  %42 = load %struct.PcapFile*, %struct.PcapFile** %8, align 8
  %43 = icmp eq %struct.PcapFile* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 @exit(i32 1) #4
  unreachable

46:                                               ; preds = %39
  %47 = load %struct.PcapFile*, %struct.PcapFile** %8, align 8
  %48 = call i32 @memset(%struct.PcapFile* %47, i32 0, i32 24)
  %49 = load %struct.PcapFile*, %struct.PcapFile** %8, align 8
  %50 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @snprintf(i32 %51, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.PcapFile*, %struct.PcapFile** %8, align 8
  %56 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %55, i32 0, i32 2
  store i32* %54, i32** %56, align 8
  %57 = load i32, i32* @CAPFILE_LITTLEENDIAN, align 4
  %58 = load %struct.PcapFile*, %struct.PcapFile** %8, align 8
  %59 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.PcapFile*, %struct.PcapFile** %8, align 8
  %62 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.PcapFile*, %struct.PcapFile** %8, align 8
  store %struct.PcapFile* %63, %struct.PcapFile** %3, align 8
  br label %64

64:                                               ; preds = %46, %32, %22
  %65 = load %struct.PcapFile*, %struct.PcapFile** %3, align 8
  ret %struct.PcapFile* %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @malloc(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @memset(%struct.PcapFile*, i32, i32) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
