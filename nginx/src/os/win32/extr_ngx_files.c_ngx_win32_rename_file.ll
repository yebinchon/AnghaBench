; ModuleID = '/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_files.c_ngx_win32_rename_file.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_files.c_ngx_win32_rename_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@NGX_ATOMIC_T_LEN = common dso_local global i32 0, align 4
@NGX_ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c".%0muA.DELETE%Z\00", align 1
@NGX_LOG_CRIT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"MoveFile() \22%s\22 to \22%s\22 failed\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"DeleteFile() \22%s\22 failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_win32_rename_file(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  %16 = load i32, i32* @NGX_ATOMIC_T_LEN, align 4
  %17 = add nsw i32 %15, %16
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = add i64 %19, 7
  %21 = trunc i64 %20 to i32
  %22 = load i32*, i32** %7, align 8
  %23 = call i32* @ngx_alloc(i32 %21, i32* %22)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i64, i64* @NGX_ENOMEM, align 8
  store i64 %27, i64* %4, align 8
  br label %96

28:                                               ; preds = %3
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ngx_memcpy(i32* %29, i64 %32, i32 %35)
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %57, %28
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @ngx_next_temp_number(i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @ngx_sprintf(i32* %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load i32*, i32** %8, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = call i64 @MoveFile(i8* %51, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %37
  br label %67

57:                                               ; preds = %37
  store i32 1, i32* %10, align 4
  %58 = load i32, i32* @NGX_LOG_CRIT, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i64, i64* @ngx_errno, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 (i32, i32*, i64, i8*, i32*, ...) @ngx_log_error(i32 %58, i32* %59, i64 %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32* %64, i32* %65)
  br label %37

67:                                               ; preds = %56
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = call i64 @MoveFile(i8* %71, i8* %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = load i64, i64* @ngx_errno, align 8
  store i64 %79, i64* %9, align 8
  br label %81

80:                                               ; preds = %67
  store i64 0, i64* %9, align 8
  br label %81

81:                                               ; preds = %80, %78
  %82 = load i32*, i32** %8, align 8
  %83 = bitcast i32* %82 to i8*
  %84 = call i64 @DeleteFile(i8* %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i32, i32* @NGX_LOG_CRIT, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i64, i64* @ngx_errno, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 (i32, i32*, i64, i8*, i32*, ...) @ngx_log_error(i32 %87, i32* %88, i64 %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %90)
  br label %92

92:                                               ; preds = %86, %81
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @ngx_free(i32* %93)
  %95 = load i64, i64* %9, align 8
  store i64 %95, i64* %4, align 8
  br label %96

96:                                               ; preds = %92, %26
  %97 = load i64, i64* %4, align 8
  ret i64 %97
}

declare dso_local i32* @ngx_alloc(i32, i32*) #1

declare dso_local i32 @ngx_memcpy(i32*, i64, i32) #1

declare dso_local i32 @ngx_next_temp_number(i32) #1

declare dso_local i32 @ngx_sprintf(i32*, i8*, i32) #1

declare dso_local i64 @MoveFile(i8*, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32*, i64, i8*, i32*, ...) #1

declare dso_local i64 @DeleteFile(i8*) #1

declare dso_local i32 @ngx_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
