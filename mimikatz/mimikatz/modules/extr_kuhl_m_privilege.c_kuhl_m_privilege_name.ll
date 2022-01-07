; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_privilege.c_kuhl_m_privilege_name.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_privilege.c_kuhl_m_privilege_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i32] [i32 76, i32 85, i32 73, i32 68, i32 32, i32 104, i32 105, i32 103, i32 104, i32 32, i32 112, i32 97, i32 114, i32 116, i32 32, i32 105, i32 115, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [21 x i32] [i32 76, i32 111, i32 111, i32 107, i32 117, i32 112, i32 80, i32 114, i32 105, i32 118, i32 105, i32 108, i32 101, i32 103, i32 101, i32 86, i32 97, i32 108, i32 117, i32 101, i32 0], align 4
@.str.2 = private unnamed_addr constant [16 x i32] [i32 77, i32 105, i32 115, i32 115, i32 105, i32 110, i32 103, i32 32, i32 39, i32 110, i32 97, i32 109, i32 101, i32 39, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_privilege_name(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %7 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = load i32**, i32*** %4, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i64 @LookupPrivilegeValue(i32* null, i32* %13, %struct.TYPE_3__* %6)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @kuhl_m_privilege_simple(i32 %22)
  store i32 %23, i32* %5, align 4
  br label %28

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([22 x i32]* @.str to i8*), i32 %26)
  br label %28

28:                                               ; preds = %24, %20
  br label %31

29:                                               ; preds = %10
  %30 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([21 x i32]* @.str.1 to i8*))
  br label %31

31:                                               ; preds = %29, %28
  br label %34

32:                                               ; preds = %2
  %33 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([16 x i32]* @.str.2 to i8*))
  br label %34

34:                                               ; preds = %32, %31
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i64 @LookupPrivilegeValue(i32*, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @kuhl_m_privilege_simple(i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, ...) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
