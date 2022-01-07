; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_tcpcon_lookup_tcb.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_tcpcon_lookup_tcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Control_Block = type { i32, i32, i16, i16, %struct.TCP_Control_Block* }
%struct.TCP_ConnectionTable = type { i32, %struct.TCP_Control_Block**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TCP_Control_Block* @tcpcon_lookup_tcb(%struct.TCP_ConnectionTable* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TCP_ConnectionTable*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TCP_Control_Block, align 8
  %13 = alloca %struct.TCP_Control_Block*, align 8
  store %struct.TCP_ConnectionTable* %0, %struct.TCP_ConnectionTable** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %12, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* %8, align 4
  %17 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %12, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  %19 = trunc i32 %18 to i16
  %20 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %12, i32 0, i32 2
  store i16 %19, i16* %20, align 8
  %21 = load i32, i32* %10, align 4
  %22 = trunc i32 %21 to i16
  %23 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %12, i32 0, i32 3
  store i16 %22, i16* %23, align 2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %6, align 8
  %29 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @tcb_hash(i32 %24, i32 %25, i32 %26, i32 %27, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %6, align 8
  %33 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %32, i32 0, i32 1
  %34 = load %struct.TCP_Control_Block**, %struct.TCP_Control_Block*** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %6, align 8
  %37 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %35, %38
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %34, i64 %40
  %42 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %41, align 8
  store %struct.TCP_Control_Block* %42, %struct.TCP_Control_Block** %13, align 8
  br label %43

43:                                               ; preds = %53, %5
  %44 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %13, align 8
  %45 = icmp ne %struct.TCP_Control_Block* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %13, align 8
  %48 = call i32 @EQUALS(%struct.TCP_Control_Block* %47, %struct.TCP_Control_Block* %12)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %46, %43
  %52 = phi i1 [ false, %43 ], [ %50, %46 ]
  br i1 %52, label %53, label %57

53:                                               ; preds = %51
  %54 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %13, align 8
  %55 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %54, i32 0, i32 4
  %56 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %55, align 8
  store %struct.TCP_Control_Block* %56, %struct.TCP_Control_Block** %13, align 8
  br label %43

57:                                               ; preds = %51
  %58 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %13, align 8
  ret %struct.TCP_Control_Block* %58
}

declare dso_local i32 @tcb_hash(i32, i32, i32, i32, i32) #1

declare dso_local i32 @EQUALS(%struct.TCP_Control_Block*, %struct.TCP_Control_Block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
