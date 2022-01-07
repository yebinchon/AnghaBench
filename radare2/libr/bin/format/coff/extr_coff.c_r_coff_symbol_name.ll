; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/coff/extr_coff.c_r_coff_symbol_name.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/coff/extr_coff.c_r_coff_symbol_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_coff_obj = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @r_coff_symbol_name(%struct.r_bin_coff_obj* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.r_bin_coff_obj*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.anon*, align 8
  store %struct.r_bin_coff_obj* %0, %struct.r_bin_coff_obj** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = bitcast [256 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 256, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %union.anon*
  store %union.anon* %12, %union.anon** %9, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %68

16:                                               ; preds = %2
  %17 = load %union.anon*, %union.anon** %9, align 8
  %18 = bitcast %union.anon* %17 to %struct.anon*
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %union.anon*, %union.anon** %9, align 8
  %24 = bitcast %union.anon* %23 to [8 x i8]*
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* %24, i64 0, i64 0
  %26 = call i8* @r_str_ndup(i8* %25, i32 8)
  store i8* %26, i8** %3, align 8
  br label %68

27:                                               ; preds = %16
  %28 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %4, align 8
  %29 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %4, align 8
  %34 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = add i64 %32, %38
  %40 = load %union.anon*, %union.anon** %9, align 8
  %41 = bitcast %union.anon* %40 to %struct.anon*
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %39, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %4, align 8
  %49 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %27
  store i8* null, i8** %3, align 8
  br label %68

53:                                               ; preds = %27
  %54 = load %struct.r_bin_coff_obj*, %struct.r_bin_coff_obj** %4, align 8
  %55 = getelementptr inbounds %struct.r_bin_coff_obj, %struct.r_bin_coff_obj* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %59 = bitcast i8* %58 to i32*
  %60 = call i32 @r_buf_read_at(i32 %56, i32 %57, i32* %59, i32 256)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  store i8* null, i8** %3, align 8
  br label %68

64:                                               ; preds = %53
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 255
  store i8 0, i8* %65, align 1
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %67 = call i8* @strdup(i8* %66)
  store i8* %67, i8** %3, align 8
  br label %68

68:                                               ; preds = %64, %63, %52, %22, %15
  %69 = load i8*, i8** %3, align 8
  ret i8* %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @r_str_ndup(i8*, i32) #2

declare dso_local i32 @r_buf_read_at(i32, i32, i32*, i32) #2

declare dso_local i8* @strdup(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
