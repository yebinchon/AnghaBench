; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_tcpcon_create_tcb.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_tcpcon_create_tcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Control_Block = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, %struct.TYPE_2__, i32, %struct.TCP_Control_Block* }
%struct.TYPE_2__ = type { i16 }
%struct.TCP_ConnectionTable = type { i32, i32, %struct.TCP_Control_Block**, %struct.TCP_Control_Block*, i32 }

@global_now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TCP_Control_Block* @tcpcon_create_tcb(%struct.TCP_ConnectionTable* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TCP_ConnectionTable*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TCP_Control_Block, align 8
  %19 = alloca %struct.TCP_Control_Block*, align 8
  store %struct.TCP_ConnectionTable* %0, %struct.TCP_ConnectionTable** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = load i32, i32* %10, align 4
  %21 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %18, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %11, align 4
  %23 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %18, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %12, align 4
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %18, i32 0, i32 2
  store i16 %25, i16* %26, align 8
  %27 = load i32, i32* %13, align 4
  %28 = trunc i32 %27 to i16
  %29 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %18, i32 0, i32 3
  store i16 %28, i16* %29, align 2
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %9, align 8
  %35 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @tcb_hash(i32 %30, i32 %31, i32 %32, i32 %33, i32 %36)
  store i32 %37, i32* %17, align 4
  %38 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %9, align 8
  %39 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %38, i32 0, i32 2
  %40 = load %struct.TCP_Control_Block**, %struct.TCP_Control_Block*** %39, align 8
  %41 = load i32, i32* %17, align 4
  %42 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %9, align 8
  %43 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %41, %44
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %40, i64 %46
  %48 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %47, align 8
  store %struct.TCP_Control_Block* %48, %struct.TCP_Control_Block** %19, align 8
  br label %49

49:                                               ; preds = %59, %8
  %50 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %19, align 8
  %51 = icmp ne %struct.TCP_Control_Block* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %19, align 8
  %54 = call i32 @EQUALS(%struct.TCP_Control_Block* %53, %struct.TCP_Control_Block* %18)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %52, %49
  %58 = phi i1 [ false, %49 ], [ %56, %52 ]
  br i1 %58, label %59, label %63

59:                                               ; preds = %57
  %60 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %19, align 8
  %61 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %60, i32 0, i32 13
  %62 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %61, align 8
  store %struct.TCP_Control_Block* %62, %struct.TCP_Control_Block** %19, align 8
  br label %49

63:                                               ; preds = %57
  %64 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %19, align 8
  %65 = icmp eq %struct.TCP_Control_Block* %64, null
  br i1 %65, label %66, label %146

66:                                               ; preds = %63
  %67 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %9, align 8
  %68 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %67, i32 0, i32 3
  %69 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %68, align 8
  %70 = icmp ne %struct.TCP_Control_Block* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %9, align 8
  %73 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %72, i32 0, i32 3
  %74 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %73, align 8
  store %struct.TCP_Control_Block* %74, %struct.TCP_Control_Block** %19, align 8
  %75 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %19, align 8
  %76 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %75, i32 0, i32 13
  %77 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %76, align 8
  %78 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %9, align 8
  %79 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %78, i32 0, i32 3
  store %struct.TCP_Control_Block* %77, %struct.TCP_Control_Block** %79, align 8
  br label %82

80:                                               ; preds = %66
  %81 = call %struct.TCP_Control_Block* @MALLOC(i32 56)
  store %struct.TCP_Control_Block* %81, %struct.TCP_Control_Block** %19, align 8
  br label %82

82:                                               ; preds = %80, %71
  %83 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %19, align 8
  %84 = call i32 @memset(%struct.TCP_Control_Block* %83, i32 0, i32 56)
  %85 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %9, align 8
  %86 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %85, i32 0, i32 2
  %87 = load %struct.TCP_Control_Block**, %struct.TCP_Control_Block*** %86, align 8
  %88 = load i32, i32* %17, align 4
  %89 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %9, align 8
  %90 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %88, %91
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %87, i64 %93
  %95 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %94, align 8
  %96 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %19, align 8
  %97 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %96, i32 0, i32 13
  store %struct.TCP_Control_Block* %95, %struct.TCP_Control_Block** %97, align 8
  %98 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %19, align 8
  %99 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %9, align 8
  %100 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %99, i32 0, i32 2
  %101 = load %struct.TCP_Control_Block**, %struct.TCP_Control_Block*** %100, align 8
  %102 = load i32, i32* %17, align 4
  %103 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %9, align 8
  %104 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %102, %105
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %101, i64 %107
  store %struct.TCP_Control_Block* %98, %struct.TCP_Control_Block** %108, align 8
  %109 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %19, align 8
  %110 = call i32 @memcpy(%struct.TCP_Control_Block* %109, %struct.TCP_Control_Block* %18, i32 12)
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %19, align 8
  %113 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %19, align 8
  %116 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %19, align 8
  %119 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %14, align 4
  %121 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %19, align 8
  %122 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %121, i32 0, i32 7
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* @global_now, align 4
  %124 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %19, align 8
  %125 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %124, i32 0, i32 12
  store i32 %123, i32* %125, align 4
  %126 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %18, i32 0, i32 3
  %127 = load i16, i16* %126, align 2
  %128 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %19, align 8
  %129 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %128, i32 0, i32 11
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  store i16 %127, i16* %130, align 8
  %131 = load i32, i32* %16, align 4
  %132 = trunc i32 %131 to i8
  %133 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %19, align 8
  %134 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %133, i32 0, i32 8
  store i8 %132, i8* %134, align 4
  %135 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %19, align 8
  %136 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %135, i32 0, i32 10
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @timeout_init(i32 %137)
  %139 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %19, align 8
  %140 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %139, i32 0, i32 9
  %141 = call i32 @banout_init(i32* %140)
  %142 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %9, align 8
  %143 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %82, %63
  %147 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %19, align 8
  ret %struct.TCP_Control_Block* %147
}

declare dso_local i32 @tcb_hash(i32, i32, i32, i32, i32) #1

declare dso_local i32 @EQUALS(%struct.TCP_Control_Block*, %struct.TCP_Control_Block*) #1

declare dso_local %struct.TCP_Control_Block* @MALLOC(i32) #1

declare dso_local i32 @memset(%struct.TCP_Control_Block*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TCP_Control_Block*, %struct.TCP_Control_Block*, i32) #1

declare dso_local i32 @timeout_init(i32) #1

declare dso_local i32 @banout_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
