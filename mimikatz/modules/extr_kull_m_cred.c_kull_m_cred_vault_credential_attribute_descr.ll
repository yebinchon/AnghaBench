; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_cred.c_kull_m_cred_vault_credential_attribute_descr.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_cred.c_kull_m_cred_vault_credential_attribute_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i32] [i32 37, i32 42, i32 115, i32 42, i32 42, i32 86, i32 65, i32 85, i32 76, i32 84, i32 32, i32 67, i32 82, i32 69, i32 68, i32 69, i32 78, i32 84, i32 73, i32 65, i32 76, i32 32, i32 65, i32 84, i32 84, i32 82, i32 73, i32 66, i32 85, i32 84, i32 69, i32 42, i32 42, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [26 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 105, i32 100, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [31 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 117, i32 110, i32 107, i32 48, i32 47, i32 49, i32 47, i32 50, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 47, i32 37, i32 48, i32 56, i32 120, i32 47, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [16 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 73, i32 86, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.5 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [16 x i32] [i32 37, i32 42, i32 115, i32 32, i32 32, i32 68, i32 97, i32 116, i32 97, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kull_m_cred_vault_credential_attribute_descr(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = shl i32 %5, 1
  %7 = call i32 (i8*, ...) @kprintf(i8* bitcast ([35 x i32]* @.str to i8*), i32 %6, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %76

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = shl i32 %11, 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str.2 to i8*), i32 %12, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = shl i32 %20, 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, ...) @kprintf(i8* bitcast ([31 x i32]* @.str.3 to i8*), i32 %21, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %24, i32 %27, i32 %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %10
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = shl i32 %42, 1
  %44 = call i32 (i8*, ...) @kprintf(i8* bitcast ([16 x i32]* @.str.4 to i8*), i32 %43, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @kull_m_string_wprintf_hex(i64 %47, i64 %50, i32 0)
  %52 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.5 to i8*))
  br label %53

53:                                               ; preds = %41, %36, %10
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %53
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load i32, i32* %3, align 4
  %65 = shl i32 %64, 1
  %66 = call i32 (i8*, ...) @kprintf(i8* bitcast ([16 x i32]* @.str.6 to i8*), i32 %65, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0))
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @kull_m_string_wprintf_hex(i64 %69, i64 %72, i32 0)
  %74 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.5 to i8*))
  br label %75

75:                                               ; preds = %63, %58, %53
  br label %76

76:                                               ; preds = %75, %2
  ret void
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
