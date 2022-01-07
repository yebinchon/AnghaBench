; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_url_encode_opt.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_url_encode_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i64, i64 }
%struct.mbuf = type { i64, i32 }

@MG_URL_ENCODE_F_UPPERCASE_HEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@MG_URL_ENCODE_F_SPACE_AS_PLUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @mg_url_encode_opt(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.mg_str, align 8
  %7 = alloca %struct.mg_str, align 8
  %8 = alloca %struct.mg_str, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mbuf, align 8
  %13 = alloca i8, align 1
  %14 = bitcast %struct.mg_str* %7 to { i64, i64 }*
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  store i64 %0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  store i64 %1, i64* %16, align 8
  %17 = bitcast %struct.mg_str* %8 to { i64, i64 }*
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 0
  store i64 %2, i64* %18, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 1
  store i64 %3, i64* %19, align 8
  store i32 %4, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @MG_URL_ENCODE_F_UPPERCASE_HEX, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0)
  store i8* %25, i8** %10, align 8
  store i64 0, i64* %11, align 8
  %26 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @mbuf_init(%struct.mbuf* %12, i64 %27)
  store i64 0, i64* %11, align 8
  br label %29

29:                                               ; preds = %84, %5
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %34, label %87

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %13, align 1
  %41 = load i8, i8* %13, align 1
  %42 = call i64 @isalnum(i8 zeroext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %34
  %45 = load i8, i8* %13, align 1
  %46 = bitcast %struct.mg_str* %8 to { i64, i64 }*
  %47 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %46, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32* @mg_strchr(i64 %48, i64 %50, i8 zeroext %45)
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %44, %34
  %54 = call i32 (%struct.mbuf*, ...) @mbuf_append(%struct.mbuf* %12, i8* %13, i32 1)
  br label %83

55:                                               ; preds = %44
  %56 = load i8, i8* %13, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 32
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @MG_URL_ENCODE_F_SPACE_AS_PLUS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 (%struct.mbuf*, ...) @mbuf_append(%struct.mbuf* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %82

66:                                               ; preds = %59, %55
  %67 = call i32 (%struct.mbuf*, ...) @mbuf_append(%struct.mbuf* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %68 = load i8*, i8** %10, align 8
  %69 = load i8, i8* %13, align 1
  %70 = zext i8 %69 to i32
  %71 = ashr i32 %70, 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %68, i64 %72
  %74 = call i32 (%struct.mbuf*, ...) @mbuf_append(%struct.mbuf* %12, i8* %73, i32 1)
  %75 = load i8*, i8** %10, align 8
  %76 = load i8, i8* %13, align 1
  %77 = zext i8 %76 to i32
  %78 = and i32 %77, 15
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  %81 = call i32 (%struct.mbuf*, ...) @mbuf_append(%struct.mbuf* %12, i8* %80, i32 1)
  br label %82

82:                                               ; preds = %66, %64
  br label %83

83:                                               ; preds = %82, %53
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %11, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %11, align 8
  br label %29

87:                                               ; preds = %29
  %88 = call i32 (%struct.mbuf*, ...) @mbuf_append(%struct.mbuf* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %89 = call i32 @mbuf_trim(%struct.mbuf* %12)
  %90 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %12, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %12, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %93, 1
  %95 = call { i64, i64 } @mg_mk_str_n(i32 %91, i64 %94)
  %96 = bitcast %struct.mg_str* %6 to { i64, i64 }*
  %97 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %96, i32 0, i32 0
  %98 = extractvalue { i64, i64 } %95, 0
  store i64 %98, i64* %97, align 8
  %99 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %96, i32 0, i32 1
  %100 = extractvalue { i64, i64 } %95, 1
  store i64 %100, i64* %99, align 8
  %101 = bitcast %struct.mg_str* %6 to { i64, i64 }*
  %102 = load { i64, i64 }, { i64, i64 }* %101, align 8
  ret { i64, i64 } %102
}

declare dso_local i32 @mbuf_init(%struct.mbuf*, i64) #1

declare dso_local i64 @isalnum(i8 zeroext) #1

declare dso_local i32* @mg_strchr(i64, i64, i8 zeroext) #1

declare dso_local i32 @mbuf_append(%struct.mbuf*, ...) #1

declare dso_local i32 @mbuf_trim(%struct.mbuf*) #1

declare dso_local { i64, i64 } @mg_mk_str_n(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
