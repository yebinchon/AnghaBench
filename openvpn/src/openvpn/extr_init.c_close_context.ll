; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_close_context.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_close_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32, i64, i8*, %struct.context* }

@SIGUSR1 = common dso_local global i32 0, align 4
@CC_USR1_TO_HUP = common dso_local global i32 0, align 4
@SIG_SOURCE_HARD = common dso_local global i64 0, align 8
@CC_HARD_USR1_TO_HUP = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"close_context usr1 to hup\00", align 1
@CC_NO_CLOSE = common dso_local global i32 0, align 4
@CC_GC_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_context(%struct.context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.context*, %struct.context** %4, align 8
  %8 = call i32 @ASSERT(%struct.context* %7)
  %9 = load %struct.context*, %struct.context** %4, align 8
  %10 = getelementptr inbounds %struct.context, %struct.context* %9, i32 0, i32 3
  %11 = load %struct.context*, %struct.context** %10, align 8
  %12 = call i32 @ASSERT(%struct.context* %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.context*, %struct.context** %4, align 8
  %18 = getelementptr inbounds %struct.context, %struct.context* %17, i32 0, i32 3
  %19 = load %struct.context*, %struct.context** %18, align 8
  %20 = getelementptr inbounds %struct.context, %struct.context* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 8
  br label %21

21:                                               ; preds = %15, %3
  %22 = load %struct.context*, %struct.context** %4, align 8
  %23 = getelementptr inbounds %struct.context, %struct.context* %22, i32 0, i32 3
  %24 = load %struct.context*, %struct.context** %23, align 8
  %25 = getelementptr inbounds %struct.context, %struct.context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SIGUSR1, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @CC_USR1_TO_HUP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %29
  %35 = load %struct.context*, %struct.context** %4, align 8
  %36 = getelementptr inbounds %struct.context, %struct.context* %35, i32 0, i32 3
  %37 = load %struct.context*, %struct.context** %36, align 8
  %38 = getelementptr inbounds %struct.context, %struct.context* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SIG_SOURCE_HARD, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @CC_HARD_USR1_TO_HUP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42, %29
  %48 = load i32, i32* @SIGHUP, align 4
  %49 = load %struct.context*, %struct.context** %4, align 8
  %50 = getelementptr inbounds %struct.context, %struct.context* %49, i32 0, i32 3
  %51 = load %struct.context*, %struct.context** %50, align 8
  %52 = getelementptr inbounds %struct.context, %struct.context* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 8
  %53 = load %struct.context*, %struct.context** %4, align 8
  %54 = getelementptr inbounds %struct.context, %struct.context* %53, i32 0, i32 3
  %55 = load %struct.context*, %struct.context** %54, align 8
  %56 = getelementptr inbounds %struct.context, %struct.context* %55, i32 0, i32 2
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %56, align 8
  br label %57

57:                                               ; preds = %47, %42, %34
  br label %58

58:                                               ; preds = %57, %21
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @CC_NO_CLOSE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load %struct.context*, %struct.context** %4, align 8
  %65 = call i32 @close_instance(%struct.context* %64)
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @CC_GC_FREE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.context*, %struct.context** %4, align 8
  %73 = call i32 @context_gc_free(%struct.context* %72)
  br label %74

74:                                               ; preds = %71, %66
  ret void
}

declare dso_local i32 @ASSERT(%struct.context*) #1

declare dso_local i32 @close_instance(%struct.context*) #1

declare dso_local i32 @context_gc_free(%struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
