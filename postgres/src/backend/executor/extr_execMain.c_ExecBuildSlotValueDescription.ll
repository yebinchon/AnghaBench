; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_ExecBuildSlotValueDescription.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_ExecBuildSlotValueDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i64* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i8*, i32 }
%struct.TYPE_17__ = type { i32, i32, i64, i64 }

@InvalidOid = common dso_local global i32 0, align 4
@RLS_ENABLED = common dso_local global i64 0, align 8
@ACL_SELECT = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@FirstLowInvalidHeapAttributeNumber = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c") = \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32)* @ExecBuildSlotValueDescription to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ExecBuildSlotValueDescription(i32 %0, %struct.TYPE_14__* %1, %struct.TYPE_15__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_17__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @InvalidOid, align 4
  %28 = call i64 @check_enable_rls(i32 %26, i32 %27, i32 1)
  %29 = load i64, i64* @RLS_ENABLED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %180

32:                                               ; preds = %5
  %33 = call i32 @initStringInfo(%struct.TYPE_16__* %12)
  %34 = call i32 @appendStringInfoChar(%struct.TYPE_16__* %12, i8 signext 40)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (...) @GetUserId()
  %37 = load i32, i32* @ACL_SELECT, align 4
  %38 = call i64 @pg_class_aclcheck(i32 %35, i32 %36, i32 %37)
  store i64 %38, i64* %17, align 8
  %39 = load i64, i64* %17, align 8
  %40 = load i64, i64* @ACLCHECK_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = call i32 @initStringInfo(%struct.TYPE_16__* %13)
  %44 = call i32 @appendStringInfoChar(%struct.TYPE_16__* %13, i8 signext 40)
  br label %46

45:                                               ; preds = %32
  store i32 1, i32* %19, align 4
  store i32 1, i32* %18, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %48 = call i32 @slot_getallattrs(%struct.TYPE_14__* %47)
  store i32 0, i32* %16, align 4
  br label %49

49:                                               ; preds = %157, %46
  %50 = load i32, i32* %16, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %160

55:                                               ; preds = %49
  store i32 0, i32* %20, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %57 = load i32, i32* %16, align 4
  %58 = call %struct.TYPE_17__* @TupleDescAttr(%struct.TYPE_15__* %56, i32 %57)
  store %struct.TYPE_17__* %58, %struct.TYPE_17__** %23, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %157

64:                                               ; preds = %55
  %65 = load i32, i32* %18, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %100, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (...) @GetUserId()
  %73 = load i32, i32* @ACL_SELECT, align 4
  %74 = call i64 @pg_attribute_aclcheck(i32 %68, i64 %71, i32 %72, i32 %73)
  store i64 %74, i64* %17, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @FirstLowInvalidHeapAttributeNumber, align 8
  %79 = sub nsw i64 %77, %78
  %80 = load i32*, i32** %10, align 8
  %81 = call i64 @bms_is_member(i64 %79, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %67
  %84 = load i64, i64* %17, align 8
  %85 = load i64, i64* @ACLCHECK_OK, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %83, %67
  store i32 1, i32* %19, align 4
  store i32 1, i32* %20, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = call i32 @appendStringInfoString(%struct.TYPE_16__* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %93

92:                                               ; preds = %87
  store i32 1, i32* %15, align 4
  br label %93

93:                                               ; preds = %92, %90
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @NameStr(i32 %96)
  %98 = call i32 @appendStringInfoString(%struct.TYPE_16__* %13, i8* %97)
  br label %99

99:                                               ; preds = %93, %83
  br label %100

100:                                              ; preds = %99, %64
  %101 = load i32, i32* %18, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %20, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %156

106:                                              ; preds = %103, %100
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %130

116:                                              ; preds = %106
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @getTypeOutputInfo(i32 %119, i32* %24, i32* %25)
  %121 = load i32, i32* %24, align 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %16, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @OidOutputFunctionCall(i32 %121, i32 %128)
  store i8* %129, i8** %21, align 8
  br label %130

130:                                              ; preds = %116, %115
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32 @appendStringInfoString(%struct.TYPE_16__* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %136

135:                                              ; preds = %130
  store i32 1, i32* %14, align 4
  br label %136

136:                                              ; preds = %135, %133
  %137 = load i8*, i8** %21, align 8
  %138 = call i32 @strlen(i8* %137)
  store i32 %138, i32* %22, align 4
  %139 = load i32, i32* %22, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp sle i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load i8*, i8** %21, align 8
  %144 = load i32, i32* %22, align 4
  %145 = call i32 @appendBinaryStringInfo(%struct.TYPE_16__* %12, i8* %143, i32 %144)
  br label %155

146:                                              ; preds = %136
  %147 = load i8*, i8** %21, align 8
  %148 = load i32, i32* %22, align 4
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @pg_mbcliplen(i8* %147, i32 %148, i32 %149)
  store i32 %150, i32* %22, align 4
  %151 = load i8*, i8** %21, align 8
  %152 = load i32, i32* %22, align 4
  %153 = call i32 @appendBinaryStringInfo(%struct.TYPE_16__* %12, i8* %151, i32 %152)
  %154 = call i32 @appendStringInfoString(%struct.TYPE_16__* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %155

155:                                              ; preds = %146, %142
  br label %156

156:                                              ; preds = %155, %103
  br label %157

157:                                              ; preds = %156, %63
  %158 = load i32, i32* %16, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %16, align 4
  br label %49

160:                                              ; preds = %49
  %161 = load i32, i32* %19, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %160
  store i8* null, i8** %6, align 8
  br label %180

164:                                              ; preds = %160
  %165 = call i32 @appendStringInfoChar(%struct.TYPE_16__* %12, i8 signext 41)
  %166 = load i32, i32* %18, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %177, label %168

168:                                              ; preds = %164
  %169 = call i32 @appendStringInfoString(%struct.TYPE_16__* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @appendBinaryStringInfo(%struct.TYPE_16__* %13, i8* %171, i32 %173)
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  store i8* %176, i8** %6, align 8
  br label %180

177:                                              ; preds = %164
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  store i8* %179, i8** %6, align 8
  br label %180

180:                                              ; preds = %177, %168, %163, %31
  %181 = load i8*, i8** %6, align 8
  ret i8* %181
}

declare dso_local i64 @check_enable_rls(i32, i32, i32) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_16__*) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_16__*, i8 signext) #1

declare dso_local i64 @pg_class_aclcheck(i32, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @slot_getallattrs(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_17__* @TupleDescAttr(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @pg_attribute_aclcheck(i32, i64, i32, i32) #1

declare dso_local i64 @bms_is_member(i64, i32*) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_16__*, i8*) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @getTypeOutputInfo(i32, i32*, i32*) #1

declare dso_local i8* @OidOutputFunctionCall(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @appendBinaryStringInfo(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @pg_mbcliplen(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
