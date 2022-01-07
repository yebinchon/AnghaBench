; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/extr_kuhl_m_sekurlsa.c_kuhl_m_sekurlsa_genericKeyOutput.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/extr_kuhl_m_sekurlsa.c_kuhl_m_sekurlsa_genericKeyOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32* }

@.str = private unnamed_addr constant [17 x i32] [i32 10, i32 9, i32 32, i32 42, i32 32, i32 78, i32 84, i32 76, i32 77, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.1 = private unnamed_addr constant [17 x i32] [i32 10, i32 9, i32 32, i32 42, i32 32, i32 83, i32 72, i32 65, i32 49, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.2 = private unnamed_addr constant [17 x i32] [i32 10, i32 9, i32 32, i32 42, i32 32, i32 82, i32 111, i32 111, i32 116, i32 75, i32 101, i32 121, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.3 = private unnamed_addr constant [17 x i32] [i32 10, i32 9, i32 32, i32 42, i32 32, i32 68, i32 80, i32 65, i32 80, i32 73, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.4 = private unnamed_addr constant [13 x i32] [i32 10, i32 9, i32 32, i32 42, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 58, i32 32, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_sekurlsa_genericKeyOutput(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %65

8:                                                ; preds = %2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %65

13:                                               ; preds = %8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %52 [
    i32 130, label %17
    i32 128, label %28
    i32 129, label %39
    i32 131, label %41
  ]

17:                                               ; preds = %13
  %18 = call i32 (i8*, ...) @kprintf(i8* bitcast ([17 x i32]* @.str to i8*))
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @kuhl_m_dpapi_oe_credential_add(i32 %22, i32* null, i32* %25, i32* null, i32* null, i32* null)
  br label %27

27:                                               ; preds = %21, %17
  br label %57

28:                                               ; preds = %13
  %29 = call i32 (i8*, ...) @kprintf(i8* bitcast ([17 x i32]* @.str.1 to i8*))
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @kuhl_m_dpapi_oe_credential_add(i32 %33, i32* null, i32* null, i32* %36, i32* null, i32* null)
  br label %38

38:                                               ; preds = %32, %28
  br label %57

39:                                               ; preds = %13
  %40 = call i32 (i8*, ...) @kprintf(i8* bitcast ([17 x i32]* @.str.2 to i8*))
  br label %57

41:                                               ; preds = %13
  %42 = call i32 (i8*, ...) @kprintf(i8* bitcast ([17 x i32]* @.str.3 to i8*))
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @kuhl_m_dpapi_oe_credential_add(i32 %46, i32* null, i32* null, i32* null, i32* %49, i32* null)
  br label %51

51:                                               ; preds = %45, %41
  br label %57

52:                                               ; preds = %13
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, ...) @kprintf(i8* bitcast ([13 x i32]* @.str.4 to i8*), i32 %55)
  br label %57

57:                                               ; preds = %52, %51, %39, %38, %27
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @kull_m_string_wprintf_hex(i32* %60, i64 %63, i32 0)
  br label %65

65:                                               ; preds = %57, %8, %2
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kuhl_m_dpapi_oe_credential_add(i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
