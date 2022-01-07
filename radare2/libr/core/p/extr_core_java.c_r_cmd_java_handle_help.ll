; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_r_cmd_java_handle_help.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_r_cmd_java_handle_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8*, i8*, i8* }

@END_CMDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Usage:\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"java [cmd] [arg..] \00", align 1
@r_core_plugin_java = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@JAVA_CMDS = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @r_cmd_java_handle_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_cmd_java_handle_help(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @END_CMDS, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 8, %9
  %11 = mul i64 %10, 4
  %12 = trunc i64 %11 to i32
  %13 = call i64 @malloc(i32 %12)
  %14 = inttoptr i64 %13 to i8**
  store i8** %14, i8*** %6, align 8
  %15 = load i8**, i8*** %6, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = load i8**, i8*** %6, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  %19 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @r_core_plugin_java, i32 0, i32 0), align 8
  %20 = load i8**, i8*** %6, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 2
  store i8* %19, i8** %21, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %61, %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @END_CMDS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %64

26:                                               ; preds = %22
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @JAVA_CMDS, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %7, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8**, i8*** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %35, 3
  %37 = add nsw i32 3, %36
  %38 = add nsw i32 %37, 0
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %34, i64 %39
  store i8* %33, i8** %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i8**, i8*** %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 %45, 3
  %47 = add nsw i32 3, %46
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %44, i64 %49
  store i8* %43, i8** %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = load i8**, i8*** %6, align 8
  %55 = load i32, i32* %5, align 4
  %56 = mul nsw i32 %55, 3
  %57 = add nsw i32 3, %56
  %58 = add nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %54, i64 %59
  store i8* %53, i8** %60, align 8
  br label %61

61:                                               ; preds = %26
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %22

64:                                               ; preds = %22
  %65 = load i8**, i8*** %6, align 8
  %66 = load i32, i32* %5, align 4
  %67 = mul nsw i32 %66, 3
  %68 = add nsw i32 3, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %65, i64 %69
  store i8* null, i8** %70, align 8
  %71 = load i32*, i32** %3, align 8
  %72 = load i8**, i8*** %6, align 8
  %73 = call i32 @r_core_cmd_help(i32* %71, i8** %72)
  %74 = load i8**, i8*** %6, align 8
  %75 = call i32 @free(i8** %74)
  ret i32 1
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @r_core_cmd_help(i32*, i8**) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
