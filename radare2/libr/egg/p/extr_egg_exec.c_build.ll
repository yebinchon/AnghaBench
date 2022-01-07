; ModuleID = '/home/carl/AnghaBench/radare2/libr/egg/p/extr_egg_exec.c_build.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/egg/p/extr_egg_exec.c_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"suid\00", align 1
@x86_osx_suid_binsh = common dso_local global i32* null, align 8
@x86_osx_binsh = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"no suid for this platform\0A\00", align 1
@x86_linux_binsh = common dso_local global i32* null, align 8
@x86_64_linux_binsh = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Unsupported arch %d bits\0A\00", align 1
@thumb_linux_binsh = common dso_local global i32* null, align 8
@arm_linux_binsh = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Unsupported os %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Cannot set shell\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*)* @build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @build(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %8 = call i32* (...) @r_buf_new()
  store i32* %8, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = call i8* @r_egg_option_get(%struct.TYPE_4__* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = call i8* @r_egg_option_get(%struct.TYPE_4__* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load i8*, i8** %7, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 102
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @free(i8* %21)
  store i8* null, i8** %7, align 8
  br label %23

23:                                               ; preds = %20, %15, %1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %79 [
    i32 130, label %27
    i32 132, label %27
    i32 131, label %41
  ]

27:                                               ; preds = %23, %23
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %40 [
    i32 128, label %31
    i32 129, label %39
  ]

31:                                               ; preds = %27
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32*, i32** @x86_osx_suid_binsh, align 8
  store i32* %35, i32** %4, align 8
  store i32 43, i32* %5, align 4
  br label %38

36:                                               ; preds = %31
  %37 = load i32*, i32** @x86_osx_binsh, align 8
  store i32* %37, i32** %4, align 8
  store i32 36, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %34
  br label %39

39:                                               ; preds = %27, %38
  br label %40

40:                                               ; preds = %27, %39
  br label %84

41:                                               ; preds = %23
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %41
  store i8* null, i8** %7, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %78 [
    i32 128, label %50
    i32 129, label %64
  ]

50:                                               ; preds = %46
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %58 [
    i32 32, label %54
    i32 64, label %56
  ]

54:                                               ; preds = %50
  %55 = load i32*, i32** @x86_linux_binsh, align 8
  store i32* %55, i32** %4, align 8
  br label %63

56:                                               ; preds = %50
  %57 = load i32*, i32** @x86_64_linux_binsh, align 8
  store i32* %57, i32** %4, align 8
  br label %63

58:                                               ; preds = %50
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %58, %56, %54
  br label %78

64:                                               ; preds = %46
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %72 [
    i32 16, label %68
    i32 32, label %70
  ]

68:                                               ; preds = %64
  %69 = load i32*, i32** @thumb_linux_binsh, align 8
  store i32* %69, i32** %4, align 8
  br label %77

70:                                               ; preds = %64
  %71 = load i32*, i32** @arm_linux_binsh, align 8
  store i32* %71, i32** %4, align 8
  br label %77

72:                                               ; preds = %64
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %72, %70, %68
  br label %78

78:                                               ; preds = %46, %77, %63
  br label %84

79:                                               ; preds = %23
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %79, %78, %40
  %85 = load i32*, i32** %4, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %117

87:                                               ; preds = %84
  %88 = load i32*, i32** %3, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = load i32*, i32** %4, align 8
  %91 = bitcast i32* %90 to i8*
  %92 = call i64 @strlen(i8* %91)
  %93 = call i32 @r_buf_set_bytes(i32* %88, i32* %89, i64 %92)
  %94 = load i8*, i8** %6, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %116

96:                                               ; preds = %87
  %97 = load i8*, i8** %6, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %96
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load i32*, i32** %3, align 8
  %106 = load i32, i32* %5, align 4
  %107 = load i8*, i8** %6, align 8
  %108 = bitcast i8* %107 to i32*
  %109 = load i8*, i8** %6, align 8
  %110 = call i64 @strlen(i8* %109)
  %111 = add nsw i64 %110, 1
  %112 = call i32 @r_buf_write_at(i32* %105, i32 %106, i32* %108, i64 %111)
  br label %115

113:                                              ; preds = %101
  %114 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %104
  br label %116

116:                                              ; preds = %115, %96, %87
  br label %117

117:                                              ; preds = %116, %84
  %118 = load i8*, i8** %7, align 8
  %119 = call i32 @free(i8* %118)
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 @free(i8* %120)
  %122 = load i32*, i32** %3, align 8
  ret i32* %122
}

declare dso_local i32* @r_buf_new(...) #1

declare dso_local i8* @r_egg_option_get(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @r_buf_set_bytes(i32*, i32*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @r_buf_write_at(i32*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
