; ModuleID = '/home/carl/AnghaBench/radare2/libr/egg/p/extr_egg_reverse.c_build.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/egg/p/extr_egg_reverse.c_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"port\00", align 1
@armle_osx_reverse = common dso_local global i32* null, align 8
@x86_freebsd_reverse = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Unsupportted\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"unsupported os %x\0A\00", align 1
@shell = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"Cannot set shell\0A\00", align 1
@suid = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*)* @build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @build(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %7 = call i32* (...) @r_buf_new()
  store i32* %7, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = call i8* @r_egg_option_get(%struct.TYPE_4__* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %6, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %34 [
    i32 130, label %13
    i32 132, label %13
    i32 131, label %20
  ]

13:                                               ; preds = %1, %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %19 [
    i32 129, label %17
  ]

17:                                               ; preds = %13
  %18 = load i32*, i32** @armle_osx_reverse, align 8
  store i32* %18, i32** %4, align 8
  store i32 43, i32* %5, align 4
  br label %19

19:                                               ; preds = %13, %17
  br label %39

20:                                               ; preds = %1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %33 [
    i32 128, label %24
  ]

24:                                               ; preds = %20
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %30 [
    i32 32, label %28
  ]

28:                                               ; preds = %24
  %29 = load i32*, i32** @x86_freebsd_reverse, align 8
  store i32* %29, i32** %4, align 8
  br label %32

30:                                               ; preds = %24
  %31 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %28
  br label %33

33:                                               ; preds = %20, %32
  br label %39

34:                                               ; preds = %1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %34, %33, %19
  %40 = load i32*, i32** %4, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %72

42:                                               ; preds = %39
  %43 = load i32*, i32** %3, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = bitcast i32* %45 to i8*
  %47 = call i32 @strlen(i8* %46)
  %48 = call i32 @r_buf_set_bytes(i32* %43, i32* %44, i32 %47)
  %49 = load i8*, i8** @shell, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %71

51:                                               ; preds = %42
  %52 = load i8*, i8** @shell, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i8*, i8** @shell, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = load i8*, i8** @shell, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = add nsw i32 %65, 1
  %67 = call i32 @r_buf_write_at(i32* %60, i32 %61, i32* %63, i32 %66)
  br label %70

68:                                               ; preds = %56
  %69 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %59
  br label %71

71:                                               ; preds = %70, %51, %42
  br label %72

72:                                               ; preds = %71, %39
  %73 = load i8*, i8** @suid, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i8*, i8** @shell, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i32*, i32** %3, align 8
  ret i32* %77
}

declare dso_local i32* @r_buf_new(...) #1

declare dso_local i8* @r_egg_option_get(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @r_buf_set_bytes(i32*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @r_buf_write_at(i32*, i32, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
