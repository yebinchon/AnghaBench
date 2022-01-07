; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth-scram.c_read_client_first_message.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth-scram.c_read_client_first_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8, i8*, i8*, i8*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"malformed SCRAM message\00", align 1
@.str.1 = private unnamed_addr constant [101 x i8] c"The client selected SCRAM-SHA-256-PLUS, but the SCRAM message does not include channel binding data.\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Comma expected, but found character \22%s\22.\00", align 1
@.str.3 = private unnamed_addr constant [112 x i8] c"The client selected SCRAM-SHA-256 without channel binding, but the SCRAM message includes channel binding data.\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"tls-server-end-point\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"unsupported SCRAM channel-binding type \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Unexpected channel-binding flag \22%s\22.\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [60 x i8] c"client uses authorization identity, but it is not supported\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Unexpected attribute \22%s\22 in client-first-message.\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"client requires an unsupported SCRAM extension\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"non-printable characters in SCRAM nonce\00", align 1
@ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*)* @read_client_first_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_client_first_message(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i8* @pstrdup(i8* %7)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i8 %10, i8* %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %106 [
    i32 110, label %16
    i32 121, label %48
    i32 112, label %80
  ]

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %24 = call i32 @errcode(i32 %23)
  %25 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @ereport(i32 %22, i32 %26)
  br label %28

28:                                               ; preds = %21, %16
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 44
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load i32, i32* @ERROR, align 4
  %37 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %38 = call i32 @errcode(i32 %37)
  %39 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %40 = load i8*, i8** %5, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @sanitize_char(i8 signext %41)
  %43 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = call i32 @ereport(i32 %36, i32 %43)
  br label %45

45:                                               ; preds = %35, %28
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %5, align 8
  br label %116

48:                                               ; preds = %2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32, i32* @ERROR, align 4
  %55 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %56 = call i32 @errcode(i32 %55)
  %57 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %58 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.1, i64 0, i64 0))
  %59 = call i32 @ereport(i32 %54, i32 %58)
  br label %60

60:                                               ; preds = %53, %48
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 44
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  %68 = load i32, i32* @ERROR, align 4
  %69 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %70 = call i32 @errcode(i32 %69)
  %71 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %72 = load i8*, i8** %5, align 8
  %73 = load i8, i8* %72, align 1
  %74 = call i32 @sanitize_char(i8 signext %73)
  %75 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = call i32 @ereport(i32 %68, i32 %75)
  br label %77

77:                                               ; preds = %67, %60
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %5, align 8
  br label %116

80:                                               ; preds = %2
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @ERROR, align 4
  %87 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %88 = call i32 @errcode(i32 %87)
  %89 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %90 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.3, i64 0, i64 0))
  %91 = call i32 @ereport(i32 %86, i32 %90)
  br label %92

92:                                               ; preds = %85, %80
  %93 = call i8* @read_attr_value(i8** %5, i8 signext 112)
  store i8* %93, i8** %6, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load i32, i32* @ERROR, align 4
  %99 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %100 = call i32 @errcode(i32 %99)
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @sanitize_str(i8* %101)
  %103 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = call i32 @ereport(i32 %98, i32 %103)
  br label %105

105:                                              ; preds = %97, %92
  br label %116

106:                                              ; preds = %2
  %107 = load i32, i32* @ERROR, align 4
  %108 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %109 = call i32 @errcode(i32 %108)
  %110 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %111 = load i8*, i8** %5, align 8
  %112 = load i8, i8* %111, align 1
  %113 = call i32 @sanitize_char(i8 signext %112)
  %114 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %113)
  %115 = call i32 @ereport(i32 %107, i32 %114)
  br label %116

116:                                              ; preds = %106, %105, %77, %45
  %117 = load i8*, i8** %5, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 97
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load i32, i32* @ERROR, align 4
  %123 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %124 = call i32 @errcode(i32 %123)
  %125 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  %126 = call i32 @ereport(i32 %122, i32 %125)
  br label %127

127:                                              ; preds = %121, %116
  %128 = load i8*, i8** %5, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 44
  br i1 %131, label %132, label %142

132:                                              ; preds = %127
  %133 = load i32, i32* @ERROR, align 4
  %134 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %135 = call i32 @errcode(i32 %134)
  %136 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %137 = load i8*, i8** %5, align 8
  %138 = load i8, i8* %137, align 1
  %139 = call i32 @sanitize_char(i8 signext %138)
  %140 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %139)
  %141 = call i32 @ereport(i32 %133, i32 %140)
  br label %142

142:                                              ; preds = %132, %127
  %143 = load i8*, i8** %5, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %5, align 8
  %145 = load i8*, i8** %5, align 8
  %146 = call i8* @pstrdup(i8* %145)
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  %149 = load i8*, i8** %5, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 109
  br i1 %152, label %153, label %159

153:                                              ; preds = %142
  %154 = load i32, i32* @ERROR, align 4
  %155 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %156 = call i32 @errcode(i32 %155)
  %157 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0))
  %158 = call i32 @ereport(i32 %154, i32 %157)
  br label %159

159:                                              ; preds = %153, %142
  %160 = call i8* @read_attr_value(i8** %5, i8 signext 110)
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  store i8* %160, i8** %162, align 8
  %163 = call i8* @read_attr_value(i8** %5, i8 signext 114)
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  store i8* %163, i8** %165, align 8
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @is_scram_printable(i8* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %159
  %172 = load i32, i32* @ERROR, align 4
  %173 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %174 = call i32 @errcode(i32 %173)
  %175 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  %176 = call i32 @ereport(i32 %172, i32 %175)
  br label %177

177:                                              ; preds = %171, %159
  br label %178

178:                                              ; preds = %183, %177
  %179 = load i8*, i8** %5, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = call i32 @read_any_attr(i8** %5, i32* null)
  br label %178

185:                                              ; preds = %178
  ret void
}

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errdetail(i8*, ...) #1

declare dso_local i32 @sanitize_char(i8 signext) #1

declare dso_local i8* @read_attr_value(i8**, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @sanitize_str(i8*) #1

declare dso_local i32 @is_scram_printable(i8*) #1

declare dso_local i32 @read_any_attr(i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
