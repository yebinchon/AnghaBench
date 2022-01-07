; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_cs.c_arm32mathaddsub.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_cs.c_arm32mathaddsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s,0xffffffff,&,%s,=,\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s,%s,%s,0xffffffff,&,%s,=\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c",$z,zf,:=,%s,cf,:=,vf,=,0,nf,=\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"30,$c,31,$c,^,31,$c\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"30,$c,31,$c,^,32,$b\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32, i32*, i32, i32*, i32*, i32, [32 x i8]*, i8*)* @arm32mathaddsub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm32mathaddsub(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32* %3, i32 %4, i32* %5, i32* %6, i32 %7, [32 x i8]* %8, i8* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca [32 x i8]*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store [32 x i8]* %8, [32 x i8]** %19, align 8
  store i8* %9, i8** %20, align 8
  %24 = call i8* @ARG(i32 0)
  store i8* %24, i8** %21, align 8
  store i32 0, i32* %23, align 4
  %25 = load i8*, i8** %21, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %10
  store i32 1, i32* %23, align 4
  br label %29

29:                                               ; preds = %28, %10
  %30 = call i32 (...) @OPCOUNT()
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i8* @ARG(i32 1)
  %36 = load i8*, i8** %21, align 8
  %37 = call i32 (i32*, i8*, i8*, ...) @r_strbuf_appendf(i32* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %35, i8* %36)
  %38 = call i8* @ARG(i32 2)
  store i8* %38, i8** %22, align 8
  br label %41

39:                                               ; preds = %29
  %40 = call i8* @ARG(i32 1)
  store i8* %40, i8** %22, align 8
  br label %41

41:                                               ; preds = %39, %32
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i8*, i8** %22, align 8
  %45 = load i8*, i8** %21, align 8
  %46 = load i8*, i8** %20, align 8
  %47 = load i8*, i8** %21, align 8
  %48 = call i32 (i32*, i8*, i8*, ...) @r_strbuf_appendf(i32* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %44, i8* %45, i8* %46, i8* %47)
  %49 = load i32, i32* %23, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %62

52:                                               ; preds = %41
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i8*, i8** %20, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0)
  %61 = call i32 (i32*, i8*, i8*, ...) @r_strbuf_appendf(i32* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %52, %51
  ret void
}

declare dso_local i8* @ARG(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @OPCOUNT(...) #1

declare dso_local i32 @r_strbuf_appendf(i32*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
