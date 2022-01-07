; ModuleID = '/home/carl/AnghaBench/radare2/libr/egg/p/extr_egg_bind.c_build.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/egg/p/extr_egg_bind.c_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"port\00", align 1
@suid = common dso_local global i8* null, align 8
@x86_osx_suid_binsh = common dso_local global i32* null, align 8
@x86_osx_binsh = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"no suid for this platform\0A\00", align 1
@x86_linux_binsh = common dso_local global i32* null, align 8
@x86_64_linux_binsh = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"Unsupportted\0A\00", align 1
@arm_linux_binsh = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"unsupported os %x\0A\00", align 1
@shell = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"Cannot set shell\0A\00", align 1
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
  switch i32 %12, label %50 [
    i32 130, label %13
    i32 132, label %13
    i32 131, label %27
  ]

13:                                               ; preds = %1, %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %26 [
    i32 128, label %17
    i32 129, label %25
  ]

17:                                               ; preds = %13
  %18 = load i8*, i8** @suid, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32*, i32** @x86_osx_suid_binsh, align 8
  store i32* %21, i32** %4, align 8
  store i32 43, i32* %5, align 4
  br label %24

22:                                               ; preds = %17
  %23 = load i32*, i32** @x86_osx_binsh, align 8
  store i32* %23, i32** %4, align 8
  store i32 36, i32* %5, align 4
  br label %24

24:                                               ; preds = %22, %20
  br label %25

25:                                               ; preds = %13, %24
  br label %26

26:                                               ; preds = %13, %25
  br label %55

27:                                               ; preds = %1
  %28 = load i8*, i8** @suid, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %27
  store i8* null, i8** @suid, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %49 [
    i32 128, label %36
    i32 129, label %47
  ]

36:                                               ; preds = %32
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %44 [
    i32 32, label %40
    i32 64, label %42
  ]

40:                                               ; preds = %36
  %41 = load i32*, i32** @x86_linux_binsh, align 8
  store i32* %41, i32** %4, align 8
  br label %46

42:                                               ; preds = %36
  %43 = load i32*, i32** @x86_64_linux_binsh, align 8
  store i32* %43, i32** %4, align 8
  br label %46

44:                                               ; preds = %36
  %45 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %42, %40
  br label %49

47:                                               ; preds = %32
  %48 = load i32*, i32** @arm_linux_binsh, align 8
  store i32* %48, i32** %4, align 8
  br label %49

49:                                               ; preds = %32, %47, %46
  br label %55

50:                                               ; preds = %1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %50, %49, %26
  %56 = load i32*, i32** %4, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %88

58:                                               ; preds = %55
  %59 = load i32*, i32** %3, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = bitcast i32* %61 to i8*
  %63 = call i32 @strlen(i8* %62)
  %64 = call i32 @r_buf_set_bytes(i32* %59, i32* %60, i32 %63)
  %65 = load i8*, i8** @shell, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %87

67:                                               ; preds = %58
  %68 = load i8*, i8** @shell, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %67
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i8*, i8** @shell, align 8
  %79 = bitcast i8* %78 to i32*
  %80 = load i8*, i8** @shell, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = add nsw i32 %81, 1
  %83 = call i32 @r_buf_write_at(i32* %76, i32 %77, i32* %79, i32 %82)
  br label %86

84:                                               ; preds = %72
  %85 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %75
  br label %87

87:                                               ; preds = %86, %67, %58
  br label %88

88:                                               ; preds = %87, %55
  %89 = load i8*, i8** @suid, align 8
  %90 = call i32 @free(i8* %89)
  %91 = load i8*, i8** @shell, align 8
  %92 = call i32 @free(i8* %91)
  %93 = load i32*, i32** %3, align 8
  ret i32* %93
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
