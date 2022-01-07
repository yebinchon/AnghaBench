; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_javascript.c_script_file_info.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_javascript.c_script_file_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { double, double, double, double, double }

@.str = private unnamed_addr constant [17 x i8] c"Cannot stat path\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"atime\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"mtime\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ctime\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"is_file\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"is_dir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @script_file_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @script_file_info(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca [6 x i8*], align 16
  %6 = alloca [5 x double], align 16
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i8* @js_tostring(i32* %7, i32 1)
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @stat(i8* %9, %struct.stat* %4)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @push_failure(i32* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %59

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @jctx(i32* %16)
  %18 = call i32 @set_last_error(i32 %17, i32 0, i32* null)
  %19 = bitcast [6 x i8*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 48, i1 false)
  %20 = bitcast i8* %19 to [6 x i8*]*
  %21 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8** %21, align 16
  %22 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %22, align 8
  %23 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8** %23, align 16
  %24 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8** %24, align 8
  %25 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8** %25, align 16
  %26 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 0, i64 0
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %28 = load double, double* %27, align 8
  store double %28, double* %26, align 8
  %29 = getelementptr inbounds double, double* %26, i64 1
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %31 = load double, double* %30, align 8
  store double %31, double* %29, align 8
  %32 = getelementptr inbounds double, double* %29, i64 1
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 2
  %34 = load double, double* %33, align 8
  store double %34, double* %32, align 8
  %35 = getelementptr inbounds double, double* %32, i64 1
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3
  %37 = load double, double* %36, align 8
  store double %37, double* %35, align 8
  %38 = getelementptr inbounds double, double* %35, i64 1
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 4
  %40 = load double, double* %39, align 8
  store double %40, double* %38, align 8
  %41 = load i32*, i32** %2, align 8
  %42 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i64 0, i64 0
  %43 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 0, i64 0
  %44 = call i32 @push_nums_obj(i32* %41, i8** %42, double* %43)
  %45 = load i32*, i32** %2, align 8
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %47 = load double, double* %46, align 8
  %48 = call i32 @S_ISREG(double %47)
  %49 = call i32 @js_pushboolean(i32* %45, i32 %48)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @js_setproperty(i32* %50, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %52 = load i32*, i32** %2, align 8
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %54 = load double, double* %53, align 8
  %55 = call i32 @S_ISDIR(double %54)
  %56 = call i32 @js_pushboolean(i32* %52, i32 %55)
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @js_setproperty(i32* %57, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %59

59:                                               ; preds = %15, %12
  ret void
}

declare dso_local i8* @js_tostring(i32*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @push_failure(i32*, i8*) #1

declare dso_local i32 @set_last_error(i32, i32, i32*) #1

declare dso_local i32 @jctx(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @push_nums_obj(i32*, i8**, double*) #1

declare dso_local i32 @js_pushboolean(i32*, i32) #1

declare dso_local i32 @S_ISREG(double) #1

declare dso_local i32 @js_setproperty(i32*, i32, i8*) #1

declare dso_local i32 @S_ISDIR(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
