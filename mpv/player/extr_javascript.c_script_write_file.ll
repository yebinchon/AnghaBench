; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_javascript.c_script_write_file.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_javascript.c_script_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@script_write_file.prefix = internal global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [8 x i8] c"file://\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"File name must be prefixed with '%s'\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Writing file '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Cannot open file for writing: '%s'\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Cannot write to file: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @script_write_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @script_write_file(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @js_tostring(i32* %10, i32 1)
  store i8* %11, i8** %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i8* @js_tostring(i32* %12, i32 2)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** @script_write_file.prefix, align 8
  %16 = call i8* @strstr(i8* %14, i8* %15)
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = load i8*, i8** @script_write_file.prefix, align 8
  %22 = call i32 @js_error(i32* %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i8*, i8** @script_write_file.prefix, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = load i8*, i8** %5, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call %struct.TYPE_5__* @jctx(i32* %30)
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i8* @mp_get_user_path(i8* %29, i32 %35, i8* %36)
  store i8* %37, i8** %5, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = call %struct.TYPE_5__* @jctx(i32* %38)
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @MP_VERBOSE(%struct.TYPE_5__* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  %42 = load i8*, i8** %5, align 8
  %43 = call i32* @fopen(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %43, i32** %7, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %23
  %47 = load i32*, i32** %3, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @js_error(i32* %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %46, %23
  %51 = load i8*, i8** %4, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @add_af_file(i8* %51, i32* %52)
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @strlen(i8* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @fwrite(i8* %56, i32 1, i32 %57, i32* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %50
  %64 = load i32*, i32** %3, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @js_error(i32* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %63, %50
  ret void
}

declare dso_local i8* @js_tostring(i32*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @js_error(i32*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @mp_get_user_path(i8*, i32, i8*) #1

declare dso_local %struct.TYPE_5__* @jctx(i32*) #1

declare dso_local i32 @MP_VERBOSE(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @add_af_file(i8*, i32*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
