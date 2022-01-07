; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/rpc/extr_kull_m_rpc_drsr.c_kull_m_rpc_drsr_free_DRS_MSG_DCINFOREPLY_data.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/rpc/extr_kull_m_rpc_drsr.c_kull_m_rpc_drsr_free_DRS_MSG_DCINFOREPLY_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [15 x i32] [i32 84, i32 79, i32 68, i32 79, i32 32, i32 40, i32 109, i32 97, i32 121, i32 98, i32 101, i32 63, i32 41, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [38 x i32] [i32 100, i32 99, i32 79, i32 117, i32 116, i32 86, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 32, i32 110, i32 111, i32 116, i32 32, i32 118, i32 97, i32 108, i32 105, i32 100, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 41, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kull_m_rpc_drsr_free_DRS_MSG_DCINFOREPLY_data(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %15 [
    i32 2, label %9
    i32 1, label %13
    i32 3, label %13
    i32 -1, label %13
  ]

9:                                                ; preds = %7
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @kull_m_rpc_ms_drsr_FreeDRS_MSG_DCINFOREPLY_V2(i32* %11)
  br label %19

13:                                               ; preds = %7, %7, %7
  %14 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([15 x i32]* @.str to i8*))
  br label %19

15:                                               ; preds = %7
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([38 x i32]* @.str.1 to i8*), i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %13, %9
  br label %20

20:                                               ; preds = %19, %2
  ret void
}

declare dso_local i32 @kull_m_rpc_ms_drsr_FreeDRS_MSG_DCINFOREPLY_V2(i32*) #1

declare dso_local i32 @PRINT_ERROR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
