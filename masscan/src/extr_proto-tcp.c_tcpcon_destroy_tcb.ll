; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_tcpcon_destroy_tcb.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_tcpcon_destroy_tcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_3__*)* }
%struct.TYPE_3__ = type { i32 }
%struct.TCP_ConnectionTable = type { i32, i32, %struct.TCP_Control_Block*, %struct.TCP_Control_Block**, i32 }
%struct.TCP_Control_Block = type { i32, %struct.TCP_Control_Block*, i64, i64, i64, i32, %struct.TYPE_3__, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [43 x i8] c"tcb: double free: %u.%u.%u.%u : %u (0x%x)\0A\00", align 1
@banner_smb1 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TCP_ConnectionTable*, %struct.TCP_Control_Block*, i32)* @tcpcon_destroy_tcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpcon_destroy_tcb(%struct.TCP_ConnectionTable* %0, %struct.TCP_Control_Block* %1, i32 %2) #0 {
  %4 = alloca %struct.TCP_ConnectionTable*, align 8
  %5 = alloca %struct.TCP_Control_Block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TCP_Control_Block**, align 8
  store %struct.TCP_ConnectionTable* %0, %struct.TCP_ConnectionTable** %4, align 8
  store %struct.TCP_Control_Block* %1, %struct.TCP_Control_Block** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @UNUSEDPARM(i32 %9)
  %11 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %12 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %15 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %18 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %21 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %4, align 8
  %24 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @tcb_hash(i64 %13, i64 %16, i32 %19, i64 %22, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %4, align 8
  %28 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %27, i32 0, i32 3
  %29 = load %struct.TCP_Control_Block**, %struct.TCP_Control_Block*** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %4, align 8
  %32 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %30, %33
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %29, i64 %35
  store %struct.TCP_Control_Block** %36, %struct.TCP_Control_Block*** %8, align 8
  br label %37

37:                                               ; preds = %48, %3
  %38 = load %struct.TCP_Control_Block**, %struct.TCP_Control_Block*** %8, align 8
  %39 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %38, align 8
  %40 = icmp ne %struct.TCP_Control_Block* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.TCP_Control_Block**, %struct.TCP_Control_Block*** %8, align 8
  %43 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %42, align 8
  %44 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %45 = icmp ne %struct.TCP_Control_Block* %43, %44
  br label %46

46:                                               ; preds = %41, %37
  %47 = phi i1 [ false, %37 ], [ %45, %41 ]
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  %49 = load %struct.TCP_Control_Block**, %struct.TCP_Control_Block*** %8, align 8
  %50 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %49, align 8
  %51 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %50, i32 0, i32 1
  store %struct.TCP_Control_Block** %51, %struct.TCP_Control_Block*** %8, align 8
  br label %37

52:                                               ; preds = %46
  %53 = load %struct.TCP_Control_Block**, %struct.TCP_Control_Block*** %8, align 8
  %54 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %53, align 8
  %55 = icmp eq %struct.TCP_Control_Block* %54, null
  br i1 %55, label %56, label %84

56:                                               ; preds = %52
  %57 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %58 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = ashr i32 %59, 24
  %61 = and i32 %60, 255
  %62 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %63 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = ashr i32 %64, 16
  %66 = and i32 %65, 255
  %67 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %68 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = ashr i32 %69, 8
  %71 = and i32 %70, 255
  %72 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %73 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = ashr i32 %74, 0
  %76 = and i32 %75, 255
  %77 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %78 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %81 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %80, i32 0, i32 11
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @LOG(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %66, i32 %71, i32 %76, i64 %79, i32 %82)
  br label %155

84:                                               ; preds = %52
  %85 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %4, align 8
  %86 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %87 = call i32 @tcpcon_flush_banners(%struct.TCP_ConnectionTable* %85, %struct.TCP_Control_Block* %86)
  %88 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %89 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %88, i32 0, i32 10
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %84
  %93 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %94 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %93, i32 0, i32 9
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %92
  %98 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %99 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %98, i32 0, i32 8
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %104 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = call i32 @free(i8* %106)
  br label %108

108:                                              ; preds = %102, %97, %92, %84
  %109 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %110 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %109, i32 0, i32 7
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %114

114:                                              ; preds = %113, %108
  %115 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %116 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %115, i32 0, i32 7
  store i64 0, i64* %116, align 8
  %117 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %118 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %117, i32 0, i32 6
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %126 [
    i32 128, label %121
  ]

121:                                              ; preds = %114
  %122 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @banner_smb1, i32 0, i32 0), align 8
  %123 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %124 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %123, i32 0, i32 6
  %125 = call i32 %122(%struct.TYPE_3__* %124)
  br label %126

126:                                              ; preds = %114, %121
  %127 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %128 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @timeout_unlink(i32 %129)
  %131 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %132 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %131, i32 0, i32 0
  store i32 0, i32* %132, align 8
  %133 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %134 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %133, i32 0, i32 4
  store i64 0, i64* %134, align 8
  %135 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %136 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %135, i32 0, i32 3
  store i64 0, i64* %136, align 8
  %137 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %138 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %137, i32 0, i32 2
  store i64 0, i64* %138, align 8
  %139 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %140 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %139, i32 0, i32 1
  %141 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %140, align 8
  %142 = load %struct.TCP_Control_Block**, %struct.TCP_Control_Block*** %8, align 8
  store %struct.TCP_Control_Block* %141, %struct.TCP_Control_Block** %142, align 8
  %143 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %4, align 8
  %144 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %143, i32 0, i32 2
  %145 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %144, align 8
  %146 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %147 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %146, i32 0, i32 1
  store %struct.TCP_Control_Block* %145, %struct.TCP_Control_Block** %147, align 8
  %148 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %5, align 8
  %149 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %4, align 8
  %150 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %149, i32 0, i32 2
  store %struct.TCP_Control_Block* %148, %struct.TCP_Control_Block** %150, align 8
  %151 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %4, align 8
  %152 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %126, %56
  ret void
}

declare dso_local i32 @UNUSEDPARM(i32) #1

declare dso_local i32 @tcb_hash(i64, i64, i32, i64, i32) #1

declare dso_local i32 @LOG(i32, i8*, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @tcpcon_flush_banners(%struct.TCP_ConnectionTable*, %struct.TCP_Control_Block*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @timeout_unlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
