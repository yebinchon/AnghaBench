; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth.c_pg_fe_sendauth.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth.c_pg_fe_sendauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i8*, %struct.TYPE_16__, i32*, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i8* }

@STATUS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Kerberos 4 authentication not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Kerberos 5 authentication not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"GSSAPI authentication not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"SSPI authentication not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Crypt authentication not supported\0A\00", align 1
@PQnoPasswordSupplied = common dso_local global i32 0, align 4
@STATUS_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"fe_sendauth: error sending password authentication\0A\00", align 1
@.str.6 = private unnamed_addr constant [99 x i8] c"fe_sendauth: invalid authentication request from server: AUTH_REQ_SASL_CONT without AUTH_REQ_SASL\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"fe_sendauth: error in SASL authentication\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"authentication method %u not supported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_fe_sendauth(i32 %0, i32 %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %11 = call i32 @check_expected_areq(i32 %9, %struct.TYPE_15__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %14, i32* %4, align 4
  br label %166

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %155 [
    i32 134, label %17
    i32 137, label %18
    i32 136, label %26
    i32 139, label %34
    i32 138, label %34
    i32 128, label %42
    i32 140, label %50
    i32 135, label %58
    i32 133, label %58
    i32 132, label %106
    i32 131, label %115
    i32 130, label %115
    i32 129, label %147
  ]

17:                                               ; preds = %15
  br label %164

18:                                               ; preds = %15
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 3
  %21 = call i32 @libpq_gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 (%struct.TYPE_16__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_16__* %20, i8* %23)
  %25 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %25, i32* %4, align 4
  br label %166

26:                                               ; preds = %15
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 3
  %29 = call i32 @libpq_gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 (%struct.TYPE_16__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_16__* %28, i8* %31)
  %33 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %33, i32* %4, align 4
  br label %166

34:                                               ; preds = %15, %15
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 3
  %37 = call i32 @libpq_gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 (%struct.TYPE_16__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_16__* %36, i8* %39)
  %41 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %41, i32* %4, align 4
  br label %166

42:                                               ; preds = %15
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 3
  %45 = call i32 @libpq_gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 (%struct.TYPE_16__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_16__* %44, i8* %47)
  %49 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %49, i32* %4, align 4
  br label %166

50:                                               ; preds = %15
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 3
  %53 = call i32 @libpq_gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 (%struct.TYPE_16__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_16__* %52, i8* %55)
  %57 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %57, i32* %4, align 4
  br label %166

58:                                               ; preds = %15, %15
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %8, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %58
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %8, align 8
  br label %76

76:                                               ; preds = %72, %58
  %77 = load i8*, i8** %8, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %79, %76
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 3
  %88 = load i32, i32* @PQnoPasswordSupplied, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = call i32 (%struct.TYPE_16__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_16__* %87, i8* %90)
  %92 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %92, i32* %4, align 4
  br label %166

93:                                               ; preds = %79
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @pg_password_sendauth(%struct.TYPE_15__* %94, i8* %95, i32 %96)
  %98 = load i32, i32* @STATUS_OK, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 3
  %103 = call i32 (%struct.TYPE_16__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_16__* %102, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %104, i32* %4, align 4
  br label %166

105:                                              ; preds = %93
  br label %164

106:                                              ; preds = %15
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @pg_SASL_init(%struct.TYPE_15__* %107, i32 %108)
  %110 = load i32, i32* @STATUS_OK, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %113, i32* %4, align 4
  br label %166

114:                                              ; preds = %106
  br label %164

115:                                              ; preds = %15, %15
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 4
  %118 = load i32*, i32** %117, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 3
  %123 = call i32 (%struct.TYPE_16__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_16__* %122, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.6, i64 0, i64 0))
  %124 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %124, i32* %4, align 4
  br label %166

125:                                              ; preds = %115
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp eq i32 %128, 130
  %130 = zext i1 %129 to i32
  %131 = call i32 @pg_SASL_continue(%struct.TYPE_15__* %126, i32 %127, i32 %130)
  %132 = load i32, i32* @STATUS_OK, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %146

134:                                              ; preds = %125
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 3
  %143 = call i32 (%struct.TYPE_16__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_16__* %142, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %144

144:                                              ; preds = %140, %134
  %145 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %145, i32* %4, align 4
  br label %166

146:                                              ; preds = %125
  br label %164

147:                                              ; preds = %15
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %149 = call i32 @pg_local_sendauth(%struct.TYPE_15__* %148)
  %150 = load i32, i32* @STATUS_OK, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %153, i32* %4, align 4
  br label %166

154:                                              ; preds = %147
  br label %164

155:                                              ; preds = %15
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 3
  %158 = call i32 @libpq_gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  %161 = load i32, i32* %5, align 4
  %162 = call i32 (%struct.TYPE_16__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_16__* %157, i8* %160, i32 %161)
  %163 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %163, i32* %4, align 4
  br label %166

164:                                              ; preds = %154, %146, %114, %105, %17
  %165 = load i32, i32* @STATUS_OK, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %164, %155, %152, %144, %120, %112, %100, %85, %50, %42, %34, %26, %18, %13
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @check_expected_areq(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @pg_password_sendauth(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @pg_SASL_init(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @pg_SASL_continue(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @pg_local_sendauth(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
