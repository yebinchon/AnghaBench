; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth-scram.c_build_server_final_message.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth-scram.c_build_server_final_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i32 }

@SCRAM_KEY_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"could not encode server signature\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"v=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*)* @build_server_final_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @build_server_final_message(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %16 = call i32 @scram_HMAC_init(i32* %7, i32 %14, i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = call i32 @scram_HMAC_update(i32* %7, i8* %19, i32 %23)
  %25 = call i32 @scram_HMAC_update(i32* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = call i32 @scram_HMAC_update(i32* %7, i8* %28, i32 %32)
  %34 = call i32 @scram_HMAC_update(i32* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = call i32 @scram_HMAC_update(i32* %7, i8* %37, i32 %41)
  %43 = call i32 @scram_HMAC_final(i32* %11, i32* %7)
  %44 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %45 = call i32 @pg_b64_enc_len(i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i8* @palloc(i32 %47)
  store i8* %48, i8** %5, align 8
  %49 = bitcast i32* %11 to i8*
  %50 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @pg_b64_encode(i8* %49, i32 %50, i8* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %1
  %57 = load i32, i32* @ERROR, align 4
  %58 = call i32 @elog(i32 %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %1
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load i8*, i8** %5, align 8
  %65 = call i8* @psprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  %66 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %66)
  ret i8* %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @scram_HMAC_init(i32*, i32, i32) #2

declare dso_local i32 @scram_HMAC_update(i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @scram_HMAC_final(i32*, i32*) #2

declare dso_local i32 @pg_b64_enc_len(i32) #2

declare dso_local i8* @palloc(i32) #2

declare dso_local i32 @pg_b64_encode(i8*, i32, i8*, i32) #2

declare dso_local i32 @elog(i32, i8*) #2

declare dso_local i8* @psprintf(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
