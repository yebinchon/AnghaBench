; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth-scram.c_read_server_final_message.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth-scram.c_read_server_final_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"error received from server in SCRAM exchange: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"malformed SCRAM message (garbage at end of server-final-message)\0A\00", align 1
@SCRAM_KEY_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"malformed SCRAM message (invalid server signature)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @read_server_final_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_server_final_message(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strdup(i8* %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %24, i32 %25)
  store i32 0, i32* %3, align 4
  br label %97

27:                                               ; preds = %2
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 101
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = call i8* @read_attr_value(i8** %5, i8 signext 101, i32* %34)
  store i8* %35, i8** %10, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i32 @libpq_gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %37, i32 %38, i8* %39)
  store i32 0, i32* %3, align 4
  br label %97

41:                                               ; preds = %27
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = call i8* @read_attr_value(i8** %5, i8 signext 118, i32* %43)
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %97

48:                                               ; preds = %41
  %49 = load i8*, i8** %5, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = call i32 @libpq_gettext(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = call i32 @pg_b64_dec_len(i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i8* @malloc(i32 %62)
  store i8* %63, i8** %8, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %58
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %70 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %68, i32 %69)
  store i32 0, i32* %3, align 4
  br label %97

71:                                               ; preds = %58
  %72 = load i8*, i8** %7, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @pg_b64_decode(i8* %72, i32 %74, i8* %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %71
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = call i32 @libpq_gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %87 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %85, i32 %86)
  store i32 0, i32* %3, align 4
  br label %97

88:                                               ; preds = %71
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %94 = call i32 @memcpy(i32 %91, i8* %92, i32 %93)
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @free(i8* %95)
  store i32 1, i32* %3, align 4
  br label %97

97:                                               ; preds = %88, %81, %66, %47, %32, %22
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32, ...) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i8* @read_attr_value(i8**, i8 signext, i32*) #1

declare dso_local i32 @pg_b64_dec_len(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @pg_b64_decode(i8*, i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
