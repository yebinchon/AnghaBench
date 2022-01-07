; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_get_http_var.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_get_http_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_get_http_var(%struct.mg_str* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.mg_str*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.mg_str* %0, %struct.mg_str** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %4
  store i32 -2, i32* %13, align 4
  br label %119

20:                                               ; preds = %16
  %21 = load %struct.mg_str*, %struct.mg_str** %5, align 8
  %22 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load %struct.mg_str*, %struct.mg_str** %5, align 8
  %30 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %25, %20
  store i32 -1, i32* %13, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 0, i8* %35, align 1
  br label %118

36:                                               ; preds = %28
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strlen(i8* %37)
  store i64 %38, i64* %12, align 8
  %39 = load %struct.mg_str*, %struct.mg_str** %5, align 8
  %40 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.mg_str*, %struct.mg_str** %5, align 8
  %43 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  store i8* %45, i8** %10, align 8
  store i32 -4, i32* %13, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  store i8 0, i8* %47, align 1
  %48 = load %struct.mg_str*, %struct.mg_str** %5, align 8
  %49 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %9, align 8
  br label %51

51:                                               ; preds = %114, %36
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8*, i8** %10, align 8
  %56 = icmp ult i8* %54, %55
  br i1 %56, label %57, label %117

57:                                               ; preds = %51
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.mg_str*, %struct.mg_str** %5, align 8
  %60 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp eq i8* %58, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 -1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 38
  br i1 %68, label %69, label %113

69:                                               ; preds = %63, %57
  %70 = load i8*, i8** %9, align 8
  %71 = load i64, i64* %12, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 61
  br i1 %75, label %76, label %113

76:                                               ; preds = %69
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @mg_ncasecmp(i8* %77, i8* %78, i64 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %113, label %82

82:                                               ; preds = %76
  %83 = load i64, i64* %12, align 8
  %84 = add i64 %83, 1
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 %84
  store i8* %86, i8** %9, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = call i64 @memchr(i8* %87, i8 signext 38, i64 %92)
  %94 = inttoptr i64 %93 to i8*
  store i8* %94, i8** %11, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %82
  %98 = load i8*, i8** %10, align 8
  store i8* %98, i8** %11, align 8
  br label %99

99:                                               ; preds = %97, %82
  %100 = load i8*, i8** %9, align 8
  %101 = load i8*, i8** %11, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = load i8*, i8** %7, align 8
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @mg_url_decode(i8* %100, i64 %105, i8* %106, i64 %107, i32 1)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %112

111:                                              ; preds = %99
  store i32 -3, i32* %13, align 4
  br label %112

112:                                              ; preds = %111, %99
  br label %117

113:                                              ; preds = %76, %69, %63
  br label %114

114:                                              ; preds = %113
  %115 = load i8*, i8** %9, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %9, align 8
  br label %51

117:                                              ; preds = %112, %51
  br label %118

118:                                              ; preds = %117, %33
  br label %119

119:                                              ; preds = %118, %19
  %120 = load i32, i32* %13, align 4
  ret i32 %120
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mg_ncasecmp(i8*, i8*, i64) #1

declare dso_local i64 @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @mg_url_decode(i8*, i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
