; ModuleID = '/home/carl/AnghaBench/radare2/libr/fs/p/extr_fs_io.c_fs_io_read.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/fs/p/extr_fs_io.c_fs_io_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* (i32, i8*)*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"mg %s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Unexpected size (%d vs %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Inconsistent read\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32)* @fs_io_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_io_read(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %8, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = call i8* @r_fs_file_copy_abs_path(%struct.TYPE_8__* %17)
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %91

22:                                               ; preds = %3
  %23 = load i8*, i8** %9, align 8
  %24 = call i8* @r_str_newf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @R_FREE(i8* %25)
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %91

30:                                               ; preds = %22
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i8* (i32, i8*)*, i8* (i32, i8*)** %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call i8* %34(i32 %38, i8* %39)
  store i8* %40, i8** %11, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @R_FREE(i8* %41)
  %43 = load i8*, i8** %11, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %90

45:                                               ; preds = %30
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @strlen(i8* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 %49, 2
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 %54, 2
  %56 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %55)
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @R_FREE(i8* %57)
  store i32 0, i32* %4, align 4
  br label %91

59:                                               ; preds = %45
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @calloc(i32 1, i32 %60)
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %59
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @R_FREE(i8* %70)
  store i32 0, i32* %4, align 4
  br label %91

72:                                               ; preds = %59
  %73 = load i8*, i8** %11, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @r_hex_str2bin(i8* %73, i8* %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %72
  %82 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @R_FREE(i8* %85)
  br label %87

87:                                               ; preds = %81, %72
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 @R_FREE(i8* %88)
  br label %90

90:                                               ; preds = %87, %30
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %69, %52, %29, %21
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i8* @r_fs_file_copy_abs_path(%struct.TYPE_8__*) #1

declare dso_local i8* @r_str_newf(i8*, i8*) #1

declare dso_local i32 @R_FREE(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @r_hex_str2bin(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
