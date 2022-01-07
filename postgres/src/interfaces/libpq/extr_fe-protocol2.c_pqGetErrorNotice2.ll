; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol2.c_pqGetErrorNotice2.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol2.c_pqGetErrorNotice2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 (i32, %struct.TYPE_20__*)* }
%struct.TYPE_19__ = type { i8*, i32 }

@PGRES_EMPTY_QUERY = common dso_local global i32 0, align 4
@PGRES_FATAL_ERROR = common dso_local global i32 0, align 4
@PGRES_NONFATAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c":  \00", align 1
@PG_DIAG_SEVERITY = common dso_local global i32 0, align 4
@PG_DIAG_MESSAGE_PRIMARY = common dso_local global i32 0, align 4
@PG_DIAG_MESSAGE_DETAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@PQTRANS_INTRANS = common dso_local global i64 0, align 8
@PQTRANS_INERROR = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i32)* @pqGetErrorNotice2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqGetErrorNotice2(%struct.TYPE_21__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %14 = call i32 @pqClearAsyncResult(%struct.TYPE_21__* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = call i32 @initPQExpBuffer(%struct.TYPE_19__* %7)
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %18 = call i64 @pqGets(%struct.TYPE_19__* %7, %struct.TYPE_21__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %201

21:                                               ; preds = %15
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %23 = load i32, i32* @PGRES_EMPTY_QUERY, align 4
  %24 = call %struct.TYPE_20__* @PQmakeEmptyPGresult(%struct.TYPE_21__* %22, i32 %23)
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %6, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = icmp ne %struct.TYPE_20__* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @PGRES_FATAL_ERROR, align 4
  br label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @PGRES_NONFATAL_ERROR, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @pqResultStrdup(%struct.TYPE_20__* %38, i8* %40)
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %34, %21
  br label %45

45:                                               ; preds = %62, %44
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 10
  br label %60

60:                                               ; preds = %49, %45
  %61 = phi i1 [ false, %45 ], [ %59, %49 ]
  br i1 %61, label %62, label %70

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  store i8 0, i8* %69, align 1
  br label %45

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @strstr(i8* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %73, i8** %9, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load i8*, i8** %9, align 8
  store i8 0, i8* %77, align 1
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %79 = load i32, i32* @PG_DIAG_SEVERITY, align 4
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @pqSaveMessageField(%struct.TYPE_20__* %78, i32 %79, i8* %81)
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 3
  store i8* %84, i8** %8, align 8
  br label %88

85:                                               ; preds = %70
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %8, align 8
  br label %88

88:                                               ; preds = %85, %76
  %89 = load i8*, i8** %8, align 8
  %90 = call i8* @strchr(i8* %89, i8 signext 10)
  store i8* %90, i8** %9, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %120

93:                                               ; preds = %88
  %94 = load i8*, i8** %9, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %9, align 8
  store i8 0, i8* %94, align 1
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %97 = load i32, i32* @PG_DIAG_MESSAGE_PRIMARY, align 4
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @pqSaveMessageField(%struct.TYPE_20__* %96, i32 %97, i8* %98)
  br label %100

100:                                              ; preds = %112, %93
  %101 = load i8*, i8** %9, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load i8*, i8** %9, align 8
  %107 = load i8, i8* %106, align 1
  %108 = call i64 @isspace(i8 zeroext %107)
  %109 = icmp ne i64 %108, 0
  br label %110

110:                                              ; preds = %105, %100
  %111 = phi i1 [ false, %100 ], [ %109, %105 ]
  br i1 %111, label %112, label %115

112:                                              ; preds = %110
  %113 = load i8*, i8** %9, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %9, align 8
  br label %100

115:                                              ; preds = %110
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %117 = load i32, i32* @PG_DIAG_MESSAGE_DETAIL, align 4
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 @pqSaveMessageField(%struct.TYPE_20__* %116, i32 %117, i8* %118)
  br label %125

120:                                              ; preds = %88
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %122 = load i32, i32* @PG_DIAG_MESSAGE_PRIMARY, align 4
  %123 = load i8*, i8** %8, align 8
  %124 = call i32 @pqSaveMessageField(%struct.TYPE_20__* %121, i32 %122, i8* %123)
  br label %125

125:                                              ; preds = %120, %115
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %175

128:                                              ; preds = %125
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %130 = call i32 @pqClearAsyncResult(%struct.TYPE_21__* %129)
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 2
  store %struct.TYPE_20__* %131, %struct.TYPE_20__** %133, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 1
  %136 = call i32 @resetPQExpBuffer(i32* %135)
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %138 = icmp ne %struct.TYPE_20__* %137, null
  br i1 %138, label %139, label %159

139:                                              ; preds = %128
  %140 = bitcast %struct.TYPE_19__* %7 to { i8*, i32 }*
  %141 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %140, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @PQExpBufferDataBroken(i8* %142, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %159, label %147

147:                                              ; preds = %139
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %147
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @appendPQExpBufferStr(i32* %154, i32 %157)
  br label %164

159:                                              ; preds = %147, %139, %128
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 1
  %162 = call i32 @libpq_gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %163 = call i32 @printfPQExpBuffer(i32* %161, i32 %162)
  br label %164

164:                                              ; preds = %159, %152
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @PQTRANS_INTRANS, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load i64, i64* @PQTRANS_INERROR, align 8
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  store i64 %171, i64* %173, align 8
  br label %174

174:                                              ; preds = %170, %164
  br label %199

175:                                              ; preds = %125
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %177 = icmp ne %struct.TYPE_20__* %176, null
  br i1 %177, label %178, label %198

178:                                              ; preds = %175
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 1
  %182 = load i32 (i32, %struct.TYPE_20__*)*, i32 (i32, %struct.TYPE_20__*)** %181, align 8
  %183 = icmp ne i32 (i32, %struct.TYPE_20__*)* %182, null
  br i1 %183, label %184, label %195

184:                                              ; preds = %178
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 1
  %188 = load i32 (i32, %struct.TYPE_20__*)*, i32 (i32, %struct.TYPE_20__*)** %187, align 8
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %194 = call i32 %188(i32 %192, %struct.TYPE_20__* %193)
  br label %195

195:                                              ; preds = %184, %178
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %197 = call i32 @PQclear(%struct.TYPE_20__* %196)
  br label %198

198:                                              ; preds = %195, %175
  br label %199

199:                                              ; preds = %198, %174
  %200 = call i32 @termPQExpBuffer(%struct.TYPE_19__* %7)
  store i32 0, i32* %3, align 4
  br label %210

201:                                              ; preds = %20
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %203 = icmp ne %struct.TYPE_20__* %202, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %206 = call i32 @PQclear(%struct.TYPE_20__* %205)
  br label %207

207:                                              ; preds = %204, %201
  %208 = call i32 @termPQExpBuffer(%struct.TYPE_19__* %7)
  %209 = load i32, i32* @EOF, align 4
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %207, %199
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @pqClearAsyncResult(%struct.TYPE_21__*) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_19__*) #1

declare dso_local i64 @pqGets(%struct.TYPE_19__*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_20__* @PQmakeEmptyPGresult(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @pqResultStrdup(%struct.TYPE_20__*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @pqSaveMessageField(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @resetPQExpBuffer(i32*) #1

declare dso_local i32 @PQExpBufferDataBroken(i8*, i32) #1

declare dso_local i32 @appendPQExpBufferStr(i32*, i32) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @PQclear(%struct.TYPE_20__*) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
