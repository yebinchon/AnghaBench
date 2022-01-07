; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_last_valueInvFunc.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_last_valueInvFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LastValueCtx = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @last_valueInvFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @last_valueInvFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.LastValueCtx*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @UNUSED_PARAMETER(i32 %8)
  %10 = load i32**, i32*** %6, align 8
  %11 = ptrtoint i32** %10 to i32
  %12 = call i32 @UNUSED_PARAMETER(i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @sqlite3_aggregate_context(i32* %13, i32 16)
  %15 = inttoptr i64 %14 to %struct.LastValueCtx*
  store %struct.LastValueCtx* %15, %struct.LastValueCtx** %7, align 8
  %16 = load %struct.LastValueCtx*, %struct.LastValueCtx** %7, align 8
  %17 = call i64 @ALWAYS(%struct.LastValueCtx* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %3
  %20 = load %struct.LastValueCtx*, %struct.LastValueCtx** %7, align 8
  %21 = getelementptr inbounds %struct.LastValueCtx, %struct.LastValueCtx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.LastValueCtx*, %struct.LastValueCtx** %7, align 8
  %25 = getelementptr inbounds %struct.LastValueCtx, %struct.LastValueCtx* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.LastValueCtx*, %struct.LastValueCtx** %7, align 8
  %30 = getelementptr inbounds %struct.LastValueCtx, %struct.LastValueCtx* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @sqlite3_value_free(i64 %31)
  %33 = load %struct.LastValueCtx*, %struct.LastValueCtx** %7, align 8
  %34 = getelementptr inbounds %struct.LastValueCtx, %struct.LastValueCtx* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %28, %19
  br label %36

36:                                               ; preds = %35, %3
  ret void
}

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i64 @sqlite3_aggregate_context(i32*, i32) #1

declare dso_local i64 @ALWAYS(%struct.LastValueCtx*) #1

declare dso_local i32 @sqlite3_value_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
