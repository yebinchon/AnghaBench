; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth-scram.c_build_client_first_message.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth-scram.c_build_client_first_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8*, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8*, i32, i64 }
%struct.TYPE_12__ = type { i32, i64 }

@SCRAM_RAW_NONCE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"could not generate nonce\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"could not encode nonce\0A\00", align 1
@SCRAM_SHA_256_PLUS_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"p=tls-server-end-point\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c",,n=,r=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_11__*)* @build_client_first_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @build_client_first_message(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %4, align 8
  %15 = load i32, i32* @SCRAM_RAW_NONCE_LEN, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = load i32, i32* @SCRAM_RAW_NONCE_LEN, align 4
  %21 = call i32 @pg_strong_random(i8* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = call i32 @libpq_gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @printfPQExpBuffer(i32* %25, i32 %26)
  store i8* null, i8** %2, align 8
  store i32 1, i32* %11, align 4
  br label %136

28:                                               ; preds = %1
  %29 = load i32, i32* @SCRAM_RAW_NONCE_LEN, align 4
  %30 = call i32 @pg_b64_enc_len(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i8* @malloc(i32 %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 @printfPQExpBuffer(i32* %42, i32 %43)
  store i8* null, i8** %2, align 8
  store i32 1, i32* %11, align 4
  br label %136

45:                                               ; preds = %28
  %46 = load i32, i32* @SCRAM_RAW_NONCE_LEN, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @pg_b64_encode(i8* %19, i32 %46, i8* %49, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = call i32 @libpq_gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %58 = call i32 @printfPQExpBuffer(i32* %56, i32 %57)
  store i8* null, i8** %2, align 8
  store i32 1, i32* %11, align 4
  br label %136

59:                                               ; preds = %45
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8 0, i8* %65, align 1
  %66 = call i32 @initPQExpBuffer(%struct.TYPE_12__* %10)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SCRAM_SHA_256_PLUS_NAME, align 4
  %71 = call i64 @strcmp(i32 %69, i32 %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %59
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @Assert(i64 %76)
  %78 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %81

79:                                               ; preds = %59
  %80 = call i32 @appendPQExpBufferChar(%struct.TYPE_12__* %10, i8 signext 110)
  br label %81

81:                                               ; preds = %79, %73
  %82 = bitcast %struct.TYPE_12__* %10 to { i32, i64 }*
  %83 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %82, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @PQExpBufferDataBroken(i32 %84, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %130

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %8, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @appendPQExpBuffer(%struct.TYPE_12__* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %95)
  %97 = bitcast %struct.TYPE_12__* %10 to { i32, i64 }*
  %98 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %97, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @PQExpBufferDataBroken(i32 %99, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %90
  br label %130

105:                                              ; preds = %90
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = add nsw i64 %110, 2
  %112 = call i8* @strdup(i64 %111)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %105
  br label %130

120:                                              ; preds = %105
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i8* @strdup(i64 %122)
  store i8* %123, i8** %7, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %130

127:                                              ; preds = %120
  %128 = call i32 @termPQExpBuffer(%struct.TYPE_12__* %10)
  %129 = load i8*, i8** %7, align 8
  store i8* %129, i8** %2, align 8
  store i32 1, i32* %11, align 4
  br label %136

130:                                              ; preds = %126, %119, %104, %89
  %131 = call i32 @termPQExpBuffer(%struct.TYPE_12__* %10)
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %135 = call i32 @printfPQExpBuffer(i32* %133, i32 %134)
  store i8* null, i8** %2, align 8
  store i32 1, i32* %11, align 4
  br label %136

136:                                              ; preds = %130, %127, %54, %40, %23
  %137 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i8*, i8** %2, align 8
  ret i8* %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pg_strong_random(i8*, i32) #2

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #2

declare dso_local i32 @libpq_gettext(i8*) #2

declare dso_local i32 @pg_b64_enc_len(i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @pg_b64_encode(i8*, i32, i8*, i32) #2

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_12__*) #2

declare dso_local i64 @strcmp(i32, i32) #2

declare dso_local i32 @Assert(i64) #2

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @appendPQExpBufferChar(%struct.TYPE_12__*, i8 signext) #2

declare dso_local i64 @PQExpBufferDataBroken(i32, i64) #2

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_12__*, i8*, i8*) #2

declare dso_local i8* @strdup(i64) #2

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_12__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
