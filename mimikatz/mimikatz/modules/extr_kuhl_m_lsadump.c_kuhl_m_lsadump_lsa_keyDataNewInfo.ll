; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_lsadump.c_kuhl_m_lsadump_lsa_keyDataNewInfo.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_lsadump.c_kuhl_m_lsadump_lsa_keyDataNewInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [8 x i32] [i32 32, i32 32, i32 32, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [17 x i32] [i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 37, i32 115, i32 32, i32 40, i32 37, i32 117, i32 41, i32 32, i32 58, i32 32, i32 0], align 4
@.str.2 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @kuhl_m_lsadump_lsa_keyDataNewInfo(i64 %0, %struct.TYPE_4__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %52

12:                                               ; preds = %4
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, i64* %8, align 8
  %17 = call i32 (i8*, ...) @kprintf(i8* bitcast ([8 x i32]* @.str to i8*), i64 %16)
  br label %18

18:                                               ; preds = %15, %12
  store i64 0, i64* %9, align 8
  br label %19

19:                                               ; preds = %48, %18
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %19
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kuhl_m_kerberos_ticket_etype(i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, ...) @kprintf(i8* bitcast ([17 x i32]* @.str.1 to i8*), i32 %29, i32 %32)
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %34, %39
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @kull_m_string_wprintf_hex(i64 %40, i32 %45, i32 0)
  %47 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.2 to i8*))
  br label %48

48:                                               ; preds = %23
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %9, align 8
  br label %19

51:                                               ; preds = %19
  br label %52

52:                                               ; preds = %51, %4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = ptrtoint %struct.TYPE_4__* %53 to i64
  %55 = load i64, i64* %7, align 8
  %56 = mul i64 %55, 4
  %57 = add i64 %54, %56
  %58 = inttoptr i64 %57 to %struct.TYPE_4__*
  ret %struct.TYPE_4__* %58
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kuhl_m_kerberos_ticket_etype(i32) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
