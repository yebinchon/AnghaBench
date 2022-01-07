; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_applyAffinity.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_applyAffinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@SQLITE_AFF_TEXT = common dso_local global i8 0, align 1
@MEM_Str = common dso_local global i32 0, align 4
@MEM_Real = common dso_local global i32 0, align 4
@MEM_Int = common dso_local global i32 0, align 4
@SQLITE_AFF_NONE = common dso_local global i8 0, align 1
@SQLITE_AFF_INTEGER = common dso_local global i8 0, align 1
@SQLITE_AFF_REAL = common dso_local global i8 0, align 1
@SQLITE_AFF_NUMERIC = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8, i32)* @applyAffinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @applyAffinity(%struct.TYPE_6__* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %7 = load i8, i8* %5, align 1
  %8 = sext i8 %7 to i32
  %9 = load i8, i8* @SQLITE_AFF_TEXT, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MEM_Str, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 0, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %12
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MEM_Real, align 4
  %24 = load i32, i32* @MEM_Int, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @sqlite3VdbeMemStringify(%struct.TYPE_6__* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %19, %12
  %33 = load i32, i32* @MEM_Real, align 4
  %34 = load i32, i32* @MEM_Int, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %82

41:                                               ; preds = %3
  %42 = load i8, i8* %5, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* @SQLITE_AFF_NONE, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %41
  %48 = load i8, i8* %5, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* @SQLITE_AFF_INTEGER, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %47
  %54 = load i8, i8* %5, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* @SQLITE_AFF_REAL, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load i8, i8* %5, align 1
  %61 = sext i8 %60 to i32
  %62 = load i8, i8* @SQLITE_AFF_NUMERIC, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %61, %63
  br label %65

65:                                               ; preds = %59, %53, %47
  %66 = phi i1 [ true, %53 ], [ true, %47 ], [ %64, %59 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = call i32 @applyNumericAffinity(%struct.TYPE_6__* %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MEM_Real, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %65
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = call i32 @sqlite3VdbeIntegerAffinity(%struct.TYPE_6__* %78)
  br label %80

80:                                               ; preds = %77, %65
  br label %81

81:                                               ; preds = %80, %41
  br label %82

82:                                               ; preds = %81, %32
  ret void
}

declare dso_local i32 @sqlite3VdbeMemStringify(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @applyNumericAffinity(%struct.TYPE_6__*) #1

declare dso_local i32 @sqlite3VdbeIntegerAffinity(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
