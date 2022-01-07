; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_lsadump.c_kuhl_m_lsadump_lsa_getHandle.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_lsadump.c_kuhl_m_lsadump_lsa_getHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i32] [i32 83, i32 97, i32 109, i32 83, i32 115, i32 0], align 4
@KULL_M_MEMORY_TYPE_PROCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i32] [i32 79, i32 112, i32 101, i32 110, i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [32 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 95, i32 103, i32 101, i32 116, i32 85, i32 110, i32 105, i32 113, i32 117, i32 101, i32 70, i32 111, i32 114, i32 78, i32 97, i32 109, i32 101, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_lsa_getHandle(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %5, align 4
  %9 = call i64 @kull_m_service_getUniqueForName(i8* bitcast ([6 x i32]* @.str to i8*), %struct.TYPE_3__* %6)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @FALSE, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @OpenProcess(i32 %12, i32 %13, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = load i32, i32* @KULL_M_MEMORY_TYPE_PROCESS, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @kull_m_memory_open(i32 %19, i32 %20, i32* %21)
  store i32 %22, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @CloseHandle(i32 %25)
  br label %27

27:                                               ; preds = %24, %18
  br label %30

28:                                               ; preds = %11
  %29 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([12 x i32]* @.str.1 to i8*))
  br label %30

30:                                               ; preds = %28, %27
  br label %33

31:                                               ; preds = %2
  %32 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([32 x i32]* @.str.2 to i8*))
  br label %33

33:                                               ; preds = %31, %30
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i64 @kull_m_service_getUniqueForName(i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @OpenProcess(i32, i32, i32) #1

declare dso_local i32 @kull_m_memory_open(i32, i32, i32*) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
