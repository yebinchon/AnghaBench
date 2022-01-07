; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashvalidate.c_check_hash_func_signature.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashvalidate.c_check_hash_func_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64* }

@INT4OID = common dso_local global i64 0, align 8
@INT8OID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid amprocnum\00", align 1
@PROCOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"cache lookup failed for function %u\00", align 1
@F_HASHINT4 = common dso_local global i64 0, align 8
@F_HASHINT4EXTENDED = common dso_local global i64 0, align 8
@DATEOID = common dso_local global i64 0, align 8
@XIDOID = common dso_local global i64 0, align 8
@CIDOID = common dso_local global i64 0, align 8
@F_TIMESTAMP_HASH = common dso_local global i64 0, align 8
@F_TIMESTAMP_HASH_EXTENDED = common dso_local global i64 0, align 8
@TIMESTAMPTZOID = common dso_local global i64 0, align 8
@F_HASHCHAR = common dso_local global i64 0, align 8
@F_HASHCHAREXTENDED = common dso_local global i64 0, align 8
@BOOLOID = common dso_local global i64 0, align 8
@F_HASHVARLENA = common dso_local global i64 0, align 8
@F_HASHVARLENAEXTENDED = common dso_local global i64 0, align 8
@BYTEAOID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64)* @check_hash_func_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_hash_func_signature(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 1, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %17 [
    i32 128, label %13
    i32 129, label %15
  ]

13:                                               ; preds = %3
  %14 = load i64, i64* @INT4OID, align 8
  store i64 %14, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %20

15:                                               ; preds = %3
  %16 = load i64, i64* @INT8OID, align 8
  store i64 %16, i64* %8, align 8
  store i32 2, i32* %9, align 4
  br label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ERROR, align 4
  %19 = call i32 (i32, i8*, ...) @elog(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %15, %13
  %21 = load i32, i32* @PROCOID, align 4
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @ObjectIdGetDatum(i64 %22)
  %24 = call i32 @SearchSysCache1(i32 %21, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @HeapTupleIsValid(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i64, i64* %4, align 8
  %31 = call i32 (i32, i8*, ...) @elog(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  br label %32

32:                                               ; preds = %28, %20
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @GETSTRUCT(i32 %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %11, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %52, label %41

41:                                               ; preds = %32
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %41, %32
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %46
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @IsBinaryCoercible(i64 %54, i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %128, label %63

63:                                               ; preds = %53
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @F_HASHINT4, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* @F_HASHINT4EXTENDED, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %67, %63
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @DATEOID, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %83, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @XIDOID, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @CIDOID, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79, %75, %71
  br label %127

84:                                               ; preds = %79, %67
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* @F_TIMESTAMP_HASH, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* @F_TIMESTAMP_HASH_EXTENDED, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88, %84
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* @TIMESTAMPTZOID, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %126

97:                                               ; preds = %92, %88
  %98 = load i64, i64* %4, align 8
  %99 = load i64, i64* @F_HASHCHAR, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i64, i64* %4, align 8
  %103 = load i64, i64* @F_HASHCHAREXTENDED, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101, %97
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* @BOOLOID, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %125

110:                                              ; preds = %105, %101
  %111 = load i64, i64* %4, align 8
  %112 = load i64, i64* @F_HASHVARLENA, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i64, i64* %4, align 8
  %116 = load i64, i64* @F_HASHVARLENAEXTENDED, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %114, %110
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* @BYTEAOID, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %124

123:                                              ; preds = %118, %114
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %123, %122
  br label %125

125:                                              ; preds = %124, %109
  br label %126

126:                                              ; preds = %125, %96
  br label %127

127:                                              ; preds = %126, %83
  br label %128

128:                                              ; preds = %127, %53
  %129 = load i32, i32* %9, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @INT8OID, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %131
  store i32 0, i32* %7, align 4
  br label %141

141:                                              ; preds = %140, %131, %128
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @ReleaseSysCache(i32 %142)
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @IsBinaryCoercible(i64, i64) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
