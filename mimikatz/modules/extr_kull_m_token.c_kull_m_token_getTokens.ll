; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_token.c_kull_m_token_getTokens.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_token.c_kull_m_token_getTokens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@kull_m_token_getTokens_process_callback = common dso_local global i32 0, align 4
@kull_m_token_getTokens_handles_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i32] [i32 84, i32 111, i32 107, i32 101, i32 110, i32 0], align 4
@TOKEN_QUERY = common dso_local global i32 0, align 4
@TOKEN_DUPLICATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_token_getTokens(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %5, align 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %8, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  store i32 0, i32* %15, align 8
  %16 = load i32, i32* @kull_m_token_getTokens_process_callback, align 4
  %17 = call i32 @kull_m_process_getProcessInformation(i32 %16, %struct.TYPE_4__* %6)
  %18 = call i32 @NT_SUCCESS(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i32, i32* @kull_m_token_getTokens_handles_callback, align 4
  %26 = load i32, i32* @TOKEN_QUERY, align 4
  %27 = load i32, i32* @TOKEN_DUPLICATE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @kull_m_handle_getHandlesOfType(i32 %25, i8* bitcast ([6 x i32]* @.str to i8*), i32 %28, i32 0, %struct.TYPE_4__* %6)
  %30 = call i32 @NT_SUCCESS(i32 %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %24, %20
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @kull_m_process_getProcessInformation(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @kull_m_handle_getHandlesOfType(i32, i8*, i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
