; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_build_replication_value_octet_string.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_build_replication_value_octet_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_5__ = type { i32, i32, i8* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i32] [i32 82, i32 116, i32 108, i32 71, i32 85, i32 73, i32 68, i32 70, i32 114, i32 111, i32 109, i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [26 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 115, i32 116, i32 114, i32 105, i32 110, i32 103, i32 95, i32 115, i32 116, i32 114, i32 105, i32 110, i32 103, i32 84, i32 111, i32 72, i32 101, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_dcshadow_build_replication_value_octet_string(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @lstrlen(i8* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 38
  br i1 %12, label %13, label %67

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 123
  br i1 %18, label %19, label %67

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 37
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 125
  br i1 %24, label %25, label %67

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %37 = load i8*, i8** %5, align 8
  store i8* %37, i8** %36, align 8
  %38 = call i32 @RtlGUIDFromString(%struct.TYPE_5__* %8, i32* %7)
  %39 = call i64 @NT_SUCCESS(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %25
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 4, i32* %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @MIDL_user_allocate(i32 %46)
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %41
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %3, align 4
  br label %101

57:                                               ; preds = %41
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @RtlCopyMemory(i8* %60, i32* %7, i32 4)
  %62 = load i32, i32* @TRUE, align 4
  store i32 %62, i32* %3, align 4
  br label %101

63:                                               ; preds = %25
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @PRINT_ERROR(i8* bitcast ([22 x i32]* @.str to i8*), i8* %64)
  br label %66

66:                                               ; preds = %63
  br label %99

67:                                               ; preds = %19, %13, %2
  %68 = load i32, i32* %6, align 4
  %69 = sdiv i32 %68, 2
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @MIDL_user_allocate(i32 %74)
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %67
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %3, align 4
  br label %101

85:                                               ; preds = %67
  %86 = load i8*, i8** %5, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @kull_m_string_stringToHex(i8* %86, i8* %89, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = load i32, i32* @TRUE, align 4
  store i32 %96, i32* %3, align 4
  br label %101

97:                                               ; preds = %85
  %98 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([26 x i32]* @.str.1 to i8*))
  br label %99

99:                                               ; preds = %97, %66
  %100 = load i32, i32* @FALSE, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %95, %83, %57, %55
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @lstrlen(i8*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @RtlGUIDFromString(%struct.TYPE_5__*, i32*) #1

declare dso_local i64 @MIDL_user_allocate(i32) #1

declare dso_local i32 @RtlCopyMemory(i8*, i32*, i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, i8*) #1

declare dso_local i64 @kull_m_string_stringToHex(i8*, i8*, i32) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
