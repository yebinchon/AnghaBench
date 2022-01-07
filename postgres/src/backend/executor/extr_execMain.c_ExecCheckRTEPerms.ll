; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_ExecCheckRTEPerms.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_ExecCheckRTEPerms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i64, i64 }

@RTE_RELATION = common dso_local global i64 0, align 8
@ACLMASK_ALL = common dso_local global i32 0, align 4
@ACL_SELECT = common dso_local global i32 0, align 4
@ACL_INSERT = common dso_local global i32 0, align 4
@ACL_UPDATE = common dso_local global i32 0, align 4
@ACLMASK_ANY = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@FirstLowInvalidHeapAttributeNumber = common dso_local global i64 0, align 8
@InvalidAttrNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @ExecCheckRTEPerms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExecCheckRTEPerms(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RTE_RELATION, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %153

17:                                               ; preds = %1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %153

24:                                               ; preds = %17
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  br label %38

36:                                               ; preds = %24
  %37 = call i64 (...) @GetUserId()
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i64 [ %35, %32 ], [ %37, %36 ]
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @ACLMASK_ALL, align 4
  %44 = call i32 @pg_class_aclmask(i64 %40, i64 %41, i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %152

51:                                               ; preds = %38
  store i32 -1, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @ACL_SELECT, align 4
  %54 = load i32, i32* @ACL_INSERT, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @ACL_UPDATE, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = and i32 %52, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %153

62:                                               ; preds = %51
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @ACL_SELECT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %121

67:                                               ; preds = %62
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @bms_is_empty(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i32, i32* @ACL_SELECT, align 4
  %77 = load i32, i32* @ACLMASK_ANY, align 4
  %78 = call i64 @pg_attribute_aclcheck_all(i64 %74, i64 %75, i32 %76, i32 %77)
  %79 = load i64, i64* @ACLCHECK_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %153

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %67
  br label %84

84:                                               ; preds = %119, %83
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @bms_next_member(i32 %87, i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %120

91:                                               ; preds = %84
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* @FirstLowInvalidHeapAttributeNumber, align 8
  %95 = add nsw i64 %93, %94
  store i64 %95, i64* %10, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* @InvalidAttrNumber, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %91
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load i32, i32* @ACL_SELECT, align 4
  %103 = load i32, i32* @ACLMASK_ALL, align 4
  %104 = call i64 @pg_attribute_aclcheck_all(i64 %100, i64 %101, i32 %102, i32 %103)
  %105 = load i64, i64* @ACLCHECK_OK, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %153

108:                                              ; preds = %99
  br label %119

109:                                              ; preds = %91
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load i32, i32* @ACL_SELECT, align 4
  %114 = call i64 @pg_attribute_aclcheck(i64 %110, i64 %111, i64 %112, i32 %113)
  %115 = load i64, i64* @ACLCHECK_OK, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  store i32 0, i32* %2, align 4
  br label %153

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %108
  br label %84

120:                                              ; preds = %84
  br label %121

121:                                              ; preds = %120, %62
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @ACL_INSERT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = load i64, i64* %7, align 8
  %128 = load i64, i64* %8, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @ACL_INSERT, align 4
  %133 = call i32 @ExecCheckRTEPermsModified(i64 %127, i64 %128, i32 %131, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %126
  store i32 0, i32* %2, align 4
  br label %153

136:                                              ; preds = %126, %121
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @ACL_UPDATE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %136
  %142 = load i64, i64* %7, align 8
  %143 = load i64, i64* %8, align 8
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @ACL_UPDATE, align 4
  %148 = call i32 @ExecCheckRTEPermsModified(i64 %142, i64 %143, i32 %146, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %153

151:                                              ; preds = %141, %136
  br label %152

152:                                              ; preds = %151, %38
  store i32 1, i32* %2, align 4
  br label %153

153:                                              ; preds = %152, %150, %135, %117, %107, %81, %61, %23, %16
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i64 @GetUserId(...) #1

declare dso_local i32 @pg_class_aclmask(i64, i64, i32, i32) #1

declare dso_local i64 @bms_is_empty(i32) #1

declare dso_local i64 @pg_attribute_aclcheck_all(i64, i64, i32, i32) #1

declare dso_local i32 @bms_next_member(i32, i32) #1

declare dso_local i64 @pg_attribute_aclcheck(i64, i64, i64, i32) #1

declare dso_local i32 @ExecCheckRTEPermsModified(i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
