; ModuleID = '/home/carl/AnghaBench/reactos/dll/appcompat/apphelp/extr_sdbstringtable.c_HashCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/appcompat/apphelp/extr_sdbstringtable.c_HashCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SdbStringHashTable = type { i32, i8* }

@.str = private unnamed_addr constant [30 x i8] c"Failed to allocate 8 bytes.\0D\0A\00", align 1
@DEFAULT_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.SdbStringHashTable* ()* @HashCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.SdbStringHashTable* @HashCreate() #0 {
  %1 = alloca %struct.SdbStringHashTable*, align 8
  %2 = alloca %struct.SdbStringHashTable*, align 8
  %3 = call i8* @SdbAlloc(i32 16)
  %4 = bitcast i8* %3 to %struct.SdbStringHashTable*
  store %struct.SdbStringHashTable* %4, %struct.SdbStringHashTable** %2, align 8
  %5 = load %struct.SdbStringHashTable*, %struct.SdbStringHashTable** %2, align 8
  %6 = icmp ne %struct.SdbStringHashTable* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = call i32 @SHIM_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.SdbStringHashTable*, %struct.SdbStringHashTable** %2, align 8
  store %struct.SdbStringHashTable* %9, %struct.SdbStringHashTable** %1, align 8
  br label %24

10:                                               ; preds = %0
  %11 = load i32, i32* @DEFAULT_TABLE_SIZE, align 4
  %12 = load %struct.SdbStringHashTable*, %struct.SdbStringHashTable** %2, align 8
  %13 = getelementptr inbounds %struct.SdbStringHashTable, %struct.SdbStringHashTable* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.SdbStringHashTable*, %struct.SdbStringHashTable** %2, align 8
  %15 = getelementptr inbounds %struct.SdbStringHashTable, %struct.SdbStringHashTable* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 1
  %19 = trunc i64 %18 to i32
  %20 = call i8* @SdbAlloc(i32 %19)
  %21 = load %struct.SdbStringHashTable*, %struct.SdbStringHashTable** %2, align 8
  %22 = getelementptr inbounds %struct.SdbStringHashTable, %struct.SdbStringHashTable* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load %struct.SdbStringHashTable*, %struct.SdbStringHashTable** %2, align 8
  store %struct.SdbStringHashTable* %23, %struct.SdbStringHashTable** %1, align 8
  br label %24

24:                                               ; preds = %10, %7
  %25 = load %struct.SdbStringHashTable*, %struct.SdbStringHashTable** %1, align 8
  ret %struct.SdbStringHashTable* %25
}

declare dso_local i8* @SdbAlloc(i32) #1

declare dso_local i32 @SHIM_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
