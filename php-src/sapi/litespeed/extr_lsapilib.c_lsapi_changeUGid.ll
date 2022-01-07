; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_lsapi_changeUGid.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_lsapi_changeUGid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, %struct.LSAPI_key_value_pair* }
%struct.TYPE_7__ = type { i32 }
%struct.LSAPI_key_value_pair = type { i8*, i32, i64 }

@s_defaultUid = common dso_local global i32 0, align 4
@s_defaultGid = common dso_local global i32 0, align 4
@s_uid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SUEXEC_AUTH\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"SUEXEC_UGID\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"LSAPI: missing SUEXEC_UGID env, use default user!\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"LSAPI: SUEXEC_AUTH authentication failed, use default user!\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"LSAPI_STDERR_LOG\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @lsapi_changeUGid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsapi_changeUGid(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.LSAPI_key_value_pair*, align 8
  %9 = alloca %struct.LSAPI_key_value_pair*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %11 = load i32, i32* @s_defaultUid, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @s_defaultGid, align 4
  store i32 %12, i32* %5, align 4
  store i8* null, i8** %7, align 8
  %13 = load i32, i32* @s_uid, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %148

16:                                               ; preds = %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %112

25:                                               ; preds = %16
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %28, i64 %30
  store %struct.LSAPI_key_value_pair* %31, %struct.LSAPI_key_value_pair** %8, align 8
  %32 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %8, align 8
  %33 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %110

38:                                               ; preds = %25
  %39 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %8, align 8
  %40 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %110

45:                                               ; preds = %38
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %8, align 8
  %53 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %52, i32 -1
  store %struct.LSAPI_key_value_pair* %53, %struct.LSAPI_key_value_pair** %8, align 8
  store %struct.LSAPI_key_value_pair* %52, %struct.LSAPI_key_value_pair** %9, align 8
  %54 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %8, align 8
  %55 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %85

60:                                               ; preds = %45
  %61 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %8, align 8
  %62 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %60
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %8, align 8
  %75 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i32*
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %4, align 4
  %79 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %8, align 8
  %80 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i32*
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %5, align 4
  br label %87

85:                                               ; preds = %60, %45
  %86 = call i32 @lsapi_log(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  store %struct.LSAPI_key_value_pair* null, %struct.LSAPI_key_value_pair** %8, align 8
  br label %87

87:                                               ; preds = %85, %67
  %88 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %8, align 8
  %89 = icmp ne %struct.LSAPI_key_value_pair* %88, null
  br i1 %89, label %90, label %107

90:                                               ; preds = %87
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %9, align 8
  %93 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %9, align 8
  %96 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %8, align 8
  %99 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %8, align 8
  %102 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @lsapi_suexec_auth(%struct.TYPE_8__* %91, i64 %94, i32 %97, i64 %100, i32 %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %90
  br label %109

107:                                              ; preds = %90, %87
  %108 = call i32 @lsapi_log(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %106
  br label %111

110:                                              ; preds = %38, %25
  br label %111

111:                                              ; preds = %110, %109
  br label %112

112:                                              ; preds = %111, %16
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* @s_defaultUid, align 4
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* @s_defaultGid, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %115, %112
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i8*, i8** %7, align 8
  %123 = call i32 @setUID_LVE(%struct.TYPE_8__* %119, i32 %120, i32 %121, i8* %122)
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  store i32 -1, i32* %2, align 4
  br label %148

126:                                              ; preds = %118
  %127 = load i32, i32* %4, align 4
  store i32 %127, i32* @s_uid, align 4
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, -1
  br i1 %131, label %132, label %139

132:                                              ; preds = %126
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @close(i32 %135)
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i32 -1, i32* %138, align 8
  br label %139

139:                                              ; preds = %132, %126
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %141 = call i8* @LSAPI_GetEnv_r(%struct.TYPE_8__* %140, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i8* %141, i8** %6, align 8
  %142 = load i8*, i8** %6, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i8*, i8** %6, align 8
  %146 = call i32 @lsapi_reopen_stderr(i8* %145)
  br label %147

147:                                              ; preds = %144, %139
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %147, %125, %15
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @lsapi_log(i8*) #1

declare dso_local i64 @lsapi_suexec_auth(%struct.TYPE_8__*, i64, i32, i64, i32) #1

declare dso_local i32 @setUID_LVE(%struct.TYPE_8__*, i32, i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @LSAPI_GetEnv_r(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @lsapi_reopen_stderr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
