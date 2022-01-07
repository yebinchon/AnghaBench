; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/opengl32/extr_icdload.c_IntDeleteAllICDs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/opengl32/extr_icdload.c_IntDeleteAllICDs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ICD_Data = type { i32, %struct.ICD_Data* }

@icdload_cs = common dso_local global i32 0, align 4
@ICD_Data_List = common dso_local global %struct.ICD_Data* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IntDeleteAllICDs() #0 {
  %1 = alloca %struct.ICD_Data*, align 8
  %2 = call i32 @EnterCriticalSection(i32* @icdload_cs)
  br label %3

3:                                                ; preds = %6, %0
  %4 = load %struct.ICD_Data*, %struct.ICD_Data** @ICD_Data_List, align 8
  %5 = icmp ne %struct.ICD_Data* %4, null
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = load %struct.ICD_Data*, %struct.ICD_Data** @ICD_Data_List, align 8
  store %struct.ICD_Data* %7, %struct.ICD_Data** %1, align 8
  %8 = load %struct.ICD_Data*, %struct.ICD_Data** %1, align 8
  %9 = getelementptr inbounds %struct.ICD_Data, %struct.ICD_Data* %8, i32 0, i32 1
  %10 = load %struct.ICD_Data*, %struct.ICD_Data** %9, align 8
  store %struct.ICD_Data* %10, %struct.ICD_Data** @ICD_Data_List, align 8
  %11 = load %struct.ICD_Data*, %struct.ICD_Data** %1, align 8
  %12 = getelementptr inbounds %struct.ICD_Data, %struct.ICD_Data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @FreeLibrary(i32 %13)
  %15 = call i32 (...) @GetProcessHeap()
  %16 = load %struct.ICD_Data*, %struct.ICD_Data** %1, align 8
  %17 = call i32 @HeapFree(i32 %15, i32 0, %struct.ICD_Data* %16)
  br label %3

18:                                               ; preds = %3
  ret void
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @FreeLibrary(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.ICD_Data*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
