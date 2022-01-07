; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_cs.c_arm32math.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_cs.c_arm32math.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%d,$$,+\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c",>>>\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c",-1,^\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c",%d,$$,+,%s,0xffffffff,&,%s,=\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c",%s,%s,0xffffffff,&,%s,=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32, i32*, i32, i32*, i32*, i32, [32 x i8]*, i8*, i32)* @arm32math to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm32math(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32* %3, i32 %4, i32* %5, i32* %6, i32 %7, [32 x i8]* %8, i8* %9, i32 %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [32 x i8]*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32* %3, i32** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32 %7, i32* %19, align 4
  store [32 x i8]* %8, [32 x i8]** %20, align 8
  store i8* %9, i8** %21, align 8
  store i32 %10, i32* %22, align 4
  %27 = call i8* @ARG(i32 0)
  store i8* %27, i8** %23, align 8
  %28 = call i32 (...) @OPCOUNT()
  %29 = icmp sgt i32 %28, 3
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %26, align 4
  %31 = call i32 (...) @OPCOUNT()
  %32 = icmp sgt i32 %31, 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %11
  %34 = call i8* @ARG(i32 1)
  store i8* %34, i8** %24, align 8
  %35 = call i8* @ARG(i32 2)
  store i8* %35, i8** %25, align 8
  br label %39

36:                                               ; preds = %11
  %37 = load i8*, i8** %23, align 8
  store i8* %37, i8** %24, align 8
  %38 = call i8* @ARG(i32 1)
  store i8* %38, i8** %25, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %26, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i8* @ARG(i32 3)
  %46 = call i32 (i32*, i8*, ...) @r_strbuf_appendf(i32* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i8*, i8** %25, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %19, align 4
  %55 = call i32 (i32*, i8*, ...) @r_strbuf_appendf(i32* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %61

56:                                               ; preds = %47
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i8*, i8** %25, align 8
  %60 = call i32 (i32*, i8*, ...) @r_strbuf_appendf(i32* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32, i32* %26, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = call i32 (i32*, i8*, ...) @r_strbuf_appendf(i32* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %22, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = call i32 (i32*, i8*, ...) @r_strbuf_appendf(i32* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i8*, i8** %24, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %19, align 4
  %83 = load i8*, i8** %21, align 8
  %84 = load i8*, i8** %23, align 8
  %85 = call i32 (i32*, i8*, ...) @r_strbuf_appendf(i32* %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %82, i8* %83, i8* %84)
  br label %93

86:                                               ; preds = %75
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i8*, i8** %24, align 8
  %90 = load i8*, i8** %21, align 8
  %91 = load i8*, i8** %23, align 8
  %92 = call i32 (i32*, i8*, ...) @r_strbuf_appendf(i32* %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %89, i8* %90, i8* %91)
  br label %93

93:                                               ; preds = %86, %79
  ret void
}

declare dso_local i8* @ARG(i32) #1

declare dso_local i32 @OPCOUNT(...) #1

declare dso_local i32 @r_strbuf_appendf(i32*, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
