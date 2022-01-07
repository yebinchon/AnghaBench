; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_send_message_to_frontend.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_send_message_to_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i32, i8*, i64 }
%struct.TYPE_12__ = type { i8* }

@ERROR = common dso_local global i64 0, align 8
@FrontendProtocol = common dso_local global i32 0, align 4
@PG_DIAG_SEVERITY = common dso_local global i8 0, align 1
@PG_DIAG_SEVERITY_NONLOCALIZED = common dso_local global i8 0, align 1
@PG_DIAG_SQLSTATE = common dso_local global i8 0, align 1
@PG_DIAG_MESSAGE_PRIMARY = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [19 x i8] c"missing error text\00", align 1
@PG_DIAG_MESSAGE_DETAIL = common dso_local global i8 0, align 1
@PG_DIAG_MESSAGE_HINT = common dso_local global i8 0, align 1
@PG_DIAG_CONTEXT = common dso_local global i8 0, align 1
@PG_DIAG_SCHEMA_NAME = common dso_local global i8 0, align 1
@PG_DIAG_TABLE_NAME = common dso_local global i8 0, align 1
@PG_DIAG_COLUMN_NAME = common dso_local global i8 0, align 1
@PG_DIAG_DATATYPE_NAME = common dso_local global i8 0, align 1
@PG_DIAG_CONSTRAINT_NAME = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@PG_DIAG_STATEMENT_POSITION = common dso_local global i8 0, align 1
@PG_DIAG_INTERNAL_POSITION = common dso_local global i8 0, align 1
@PG_DIAG_INTERNAL_QUERY = common dso_local global i8 0, align 1
@PG_DIAG_SOURCE_FILE = common dso_local global i8 0, align 1
@PG_DIAG_SOURCE_LINE = common dso_local global i8 0, align 1
@PG_DIAG_SOURCE_FUNCTION = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s:  \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c" at character %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @send_message_to_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_message_to_frontend(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [12 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ERROR, align 8
  %13 = icmp slt i64 %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 78, i32 69
  %16 = trunc i32 %15 to i8
  %17 = call i32 @pq_beginmessage(%struct.TYPE_12__* %3, i8 signext %16)
  %18 = load i32, i32* @FrontendProtocol, align 4
  %19 = call i32 @PG_PROTOCOL_MAJOR(i32 %18)
  %20 = icmp sge i32 %19, 3
  br i1 %20, label %21, label %253

21:                                               ; preds = %1
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i8* @error_severity(i64 %24)
  store i8* %25, i8** %4, align 8
  %26 = load i8, i8* @PG_DIAG_SEVERITY, align 1
  %27 = call i32 @pq_sendbyte(%struct.TYPE_12__* %3, i8 signext %26)
  %28 = load i8*, i8** %4, align 8
  %29 = call i8* @_(i8* %28)
  %30 = call i32 @err_sendstring(%struct.TYPE_12__* %3, i8* %29)
  %31 = load i8, i8* @PG_DIAG_SEVERITY_NONLOCALIZED, align 1
  %32 = call i32 @pq_sendbyte(%struct.TYPE_12__* %3, i8 signext %31)
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @err_sendstring(%struct.TYPE_12__* %3, i8* %33)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %49, %21
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 5
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = call signext i8 @PGUNSIXBIT(i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 %45
  store i8 %43, i8* %46, align 1
  %47 = load i32, i32* %6, align 4
  %48 = ashr i32 %47, 6
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %38

52:                                               ; preds = %38
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 %54
  store i8 0, i8* %55, align 1
  %56 = load i8, i8* @PG_DIAG_SQLSTATE, align 1
  %57 = call i32 @pq_sendbyte(%struct.TYPE_12__* %3, i8 signext %56)
  %58 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %59 = call i32 @err_sendstring(%struct.TYPE_12__* %3, i8* %58)
  %60 = load i8, i8* @PG_DIAG_MESSAGE_PRIMARY, align 1
  %61 = call i32 @pq_sendbyte(%struct.TYPE_12__* %3, i8 signext %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %52
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @err_sendstring(%struct.TYPE_12__* %3, i8* %69)
  br label %74

71:                                               ; preds = %52
  %72 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %73 = call i32 @err_sendstring(%struct.TYPE_12__* %3, i8* %72)
  br label %74

74:                                               ; preds = %71, %66
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i8, i8* @PG_DIAG_MESSAGE_DETAIL, align 1
  %81 = call i32 @pq_sendbyte(%struct.TYPE_12__* %3, i8 signext %80)
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @err_sendstring(%struct.TYPE_12__* %3, i8* %84)
  br label %86

86:                                               ; preds = %79, %74
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load i8, i8* @PG_DIAG_MESSAGE_HINT, align 1
  %93 = call i32 @pq_sendbyte(%struct.TYPE_12__* %3, i8 signext %92)
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 4
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @err_sendstring(%struct.TYPE_12__* %3, i8* %96)
  br label %98

98:                                               ; preds = %91, %86
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 5
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load i8, i8* @PG_DIAG_CONTEXT, align 1
  %105 = call i32 @pq_sendbyte(%struct.TYPE_12__* %3, i8 signext %104)
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 5
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @err_sendstring(%struct.TYPE_12__* %3, i8* %108)
  br label %110

110:                                              ; preds = %103, %98
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 6
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load i8, i8* @PG_DIAG_SCHEMA_NAME, align 1
  %117 = call i32 @pq_sendbyte(%struct.TYPE_12__* %3, i8 signext %116)
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 6
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @err_sendstring(%struct.TYPE_12__* %3, i8* %120)
  br label %122

122:                                              ; preds = %115, %110
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 7
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load i8, i8* @PG_DIAG_TABLE_NAME, align 1
  %129 = call i32 @pq_sendbyte(%struct.TYPE_12__* %3, i8 signext %128)
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 7
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @err_sendstring(%struct.TYPE_12__* %3, i8* %132)
  br label %134

134:                                              ; preds = %127, %122
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 8
  %137 = load i8*, i8** %136, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load i8, i8* @PG_DIAG_COLUMN_NAME, align 1
  %141 = call i32 @pq_sendbyte(%struct.TYPE_12__* %3, i8 signext %140)
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 8
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @err_sendstring(%struct.TYPE_12__* %3, i8* %144)
  br label %146

146:                                              ; preds = %139, %134
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 9
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load i8, i8* @PG_DIAG_DATATYPE_NAME, align 1
  %153 = call i32 @pq_sendbyte(%struct.TYPE_12__* %3, i8 signext %152)
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 9
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @err_sendstring(%struct.TYPE_12__* %3, i8* %156)
  br label %158

158:                                              ; preds = %151, %146
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 10
  %161 = load i8*, i8** %160, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %170

163:                                              ; preds = %158
  %164 = load i8, i8* @PG_DIAG_CONSTRAINT_NAME, align 1
  %165 = call i32 @pq_sendbyte(%struct.TYPE_12__* %3, i8 signext %164)
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 10
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @err_sendstring(%struct.TYPE_12__* %3, i8* %168)
  br label %170

170:                                              ; preds = %163, %158
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 11
  %173 = load i32, i32* %172, align 8
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %170
  %176 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 11
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @snprintf(i8* %176, i32 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %179)
  %181 = load i8, i8* @PG_DIAG_STATEMENT_POSITION, align 1
  %182 = call i32 @pq_sendbyte(%struct.TYPE_12__* %3, i8 signext %181)
  %183 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %184 = call i32 @err_sendstring(%struct.TYPE_12__* %3, i8* %183)
  br label %185

185:                                              ; preds = %175, %170
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 12
  %188 = load i32, i32* %187, align 4
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %185
  %191 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 12
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @snprintf(i8* %191, i32 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %194)
  %196 = load i8, i8* @PG_DIAG_INTERNAL_POSITION, align 1
  %197 = call i32 @pq_sendbyte(%struct.TYPE_12__* %3, i8 signext %196)
  %198 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %199 = call i32 @err_sendstring(%struct.TYPE_12__* %3, i8* %198)
  br label %200

200:                                              ; preds = %190, %185
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 13
  %203 = load i8*, i8** %202, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %212

205:                                              ; preds = %200
  %206 = load i8, i8* @PG_DIAG_INTERNAL_QUERY, align 1
  %207 = call i32 @pq_sendbyte(%struct.TYPE_12__* %3, i8 signext %206)
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 13
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @err_sendstring(%struct.TYPE_12__* %3, i8* %210)
  br label %212

212:                                              ; preds = %205, %200
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 14
  %215 = load i8*, i8** %214, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %224

217:                                              ; preds = %212
  %218 = load i8, i8* @PG_DIAG_SOURCE_FILE, align 1
  %219 = call i32 @pq_sendbyte(%struct.TYPE_12__* %3, i8 signext %218)
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 14
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @err_sendstring(%struct.TYPE_12__* %3, i8* %222)
  br label %224

224:                                              ; preds = %217, %212
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 15
  %227 = load i32, i32* %226, align 8
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %239

229:                                              ; preds = %224
  %230 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 15
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @snprintf(i8* %230, i32 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %233)
  %235 = load i8, i8* @PG_DIAG_SOURCE_LINE, align 1
  %236 = call i32 @pq_sendbyte(%struct.TYPE_12__* %3, i8 signext %235)
  %237 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %238 = call i32 @err_sendstring(%struct.TYPE_12__* %3, i8* %237)
  br label %239

239:                                              ; preds = %229, %224
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 16
  %242 = load i8*, i8** %241, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %251

244:                                              ; preds = %239
  %245 = load i8, i8* @PG_DIAG_SOURCE_FUNCTION, align 1
  %246 = call i32 @pq_sendbyte(%struct.TYPE_12__* %3, i8 signext %245)
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 16
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @err_sendstring(%struct.TYPE_12__* %3, i8* %249)
  br label %251

251:                                              ; preds = %244, %239
  %252 = call i32 @pq_sendbyte(%struct.TYPE_12__* %3, i8 signext 0)
  br label %323

253:                                              ; preds = %1
  %254 = call i32 @initStringInfo(%struct.TYPE_12__* %8)
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = call i8* @error_severity(i64 %257)
  %259 = call i8* @_(i8* %258)
  %260 = call i32 @appendStringInfo(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %259)
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 17
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %275

265:                                              ; preds = %253
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 16
  %268 = load i8*, i8** %267, align 8
  %269 = icmp ne i8* %268, null
  br i1 %269, label %270, label %275

270:                                              ; preds = %265
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 16
  %273 = load i8*, i8** %272, align 8
  %274 = call i32 @appendStringInfo(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %273)
  br label %275

275:                                              ; preds = %270, %265, %253
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 2
  %278 = load i8*, i8** %277, align 8
  %279 = icmp ne i8* %278, null
  br i1 %279, label %280, label %285

280:                                              ; preds = %275
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 2
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @appendStringInfoString(%struct.TYPE_12__* %8, i8* %283)
  br label %288

285:                                              ; preds = %275
  %286 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %287 = call i32 @appendStringInfoString(%struct.TYPE_12__* %8, i8* %286)
  br label %288

288:                                              ; preds = %285, %280
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 11
  %291 = load i32, i32* %290, align 8
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %293, label %301

293:                                              ; preds = %288
  %294 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 11
  %297 = load i32, i32* %296, align 8
  %298 = sext i32 %297 to i64
  %299 = inttoptr i64 %298 to i8*
  %300 = call i32 @appendStringInfo(%struct.TYPE_12__* %8, i8* %294, i8* %299)
  br label %315

301:                                              ; preds = %288
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 12
  %304 = load i32, i32* %303, align 4
  %305 = icmp sgt i32 %304, 0
  br i1 %305, label %306, label %314

306:                                              ; preds = %301
  %307 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 12
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  %312 = inttoptr i64 %311 to i8*
  %313 = call i32 @appendStringInfo(%struct.TYPE_12__* %8, i8* %307, i8* %312)
  br label %314

314:                                              ; preds = %306, %301
  br label %315

315:                                              ; preds = %314, %293
  %316 = call i32 @appendStringInfoChar(%struct.TYPE_12__* %8, i8 signext 10)
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %318 = load i8*, i8** %317, align 8
  %319 = call i32 @err_sendstring(%struct.TYPE_12__* %3, i8* %318)
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %321 = load i8*, i8** %320, align 8
  %322 = call i32 @pfree(i8* %321)
  br label %323

323:                                              ; preds = %315, %251
  %324 = call i32 @pq_endmessage(%struct.TYPE_12__* %3)
  %325 = call i32 (...) @pq_flush()
  ret void
}

declare dso_local i32 @pq_beginmessage(%struct.TYPE_12__*, i8 signext) #1

declare dso_local i32 @PG_PROTOCOL_MAJOR(i32) #1

declare dso_local i8* @error_severity(i64) #1

declare dso_local i32 @pq_sendbyte(%struct.TYPE_12__*, i8 signext) #1

declare dso_local i32 @err_sendstring(%struct.TYPE_12__*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local signext i8 @PGUNSIXBIT(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_12__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_12__*, i8 signext) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @pq_endmessage(%struct.TYPE_12__*) #1

declare dso_local i32 @pq_flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
