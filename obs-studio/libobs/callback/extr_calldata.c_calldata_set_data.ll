; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_calldata.c_calldata_set_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_calldata.c_calldata_set_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calldata_set_data(%struct.TYPE_6__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32* null, i32** %9, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %19, %4
  br label %160

27:                                               ; preds = %22
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @cd_set_first_param(%struct.TYPE_6__* %38, i8* %39, i8* %40, i64 %41)
  br label %160

43:                                               ; preds = %32, %27
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @cd_getparam(%struct.TYPE_6__* %44, i8* %45, i32** %9)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %129

48:                                               ; preds = %43
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @memcpy(i64* %10, i32* %49, i32 8)
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %90

54:                                               ; preds = %48
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %10, align 8
  %57 = sub i64 %55, %56
  store i64 %57, i64* %11, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %12, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %11, align 8
  %64 = add i64 %62, %63
  %65 = call i32 @cd_ensure_capacity(%struct.TYPE_6__* %61, i32** %9, i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %54
  br label %160

68:                                               ; preds = %54
  %69 = load i32*, i32** %9, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32*, i32** %9, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = ptrtoint i32* %74 to i64
  %79 = ptrtoint i32* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 4
  %82 = sub i64 %73, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32 @memmove(i32* %71, i32* %72, i32 %83)
  %85 = load i64, i64* %11, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, %85
  store i64 %89, i64* %87, align 8
  br label %125

90:                                               ; preds = %48
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* %8, align 8
  %93 = icmp ugt i64 %91, %92
  br i1 %93, label %94, label %124

94:                                               ; preds = %90
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %8, align 8
  %97 = sub i64 %95, %96
  store i64 %97, i64* %13, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %13, align 8
  %102 = sub i64 %100, %101
  store i64 %102, i64* %14, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = load i64, i64* %13, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i64, i64* %14, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = ptrtoint i32* %108 to i64
  %113 = ptrtoint i32* %111 to i64
  %114 = sub i64 %112, %113
  %115 = sdiv exact i64 %114, 4
  %116 = sub i64 %107, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @memmove(i32* %103, i32* %106, i32 %117)
  %119 = load i64, i64* %13, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = sub i64 %122, %119
  store i64 %123, i64* %121, align 8
  br label %124

124:                                              ; preds = %94, %90
  br label %125

125:                                              ; preds = %124, %68
  %126 = load i8*, i8** %7, align 8
  %127 = load i64, i64* %8, align 8
  %128 = call i32 @cd_copy_data(i32** %9, i8* %126, i64 %127)
  br label %160

129:                                              ; preds = %43
  %130 = load i8*, i8** %6, align 8
  %131 = call i32 @strlen(i8* %130)
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  store i64 %133, i64* %15, align 8
  %134 = load i64, i64* %15, align 8
  %135 = load i64, i64* %8, align 8
  %136 = add i64 %134, %135
  %137 = add i64 %136, 16
  store i64 %137, i64* %16, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %16, align 8
  %143 = add i64 %141, %142
  %144 = call i32 @cd_ensure_capacity(%struct.TYPE_6__* %138, i32** %9, i64 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %129
  br label %160

147:                                              ; preds = %129
  %148 = load i64, i64* %16, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = add i64 %151, %148
  store i64 %152, i64* %150, align 8
  %153 = load i8*, i8** %6, align 8
  %154 = call i32 @cd_copy_string(i32** %9, i8* %153, i32 0)
  %155 = load i8*, i8** %7, align 8
  %156 = load i64, i64* %8, align 8
  %157 = call i32 @cd_copy_data(i32** %9, i8* %155, i64 %156)
  %158 = load i32*, i32** %9, align 8
  %159 = call i32 @memset(i32* %158, i32 0, i32 8)
  br label %160

160:                                              ; preds = %26, %37, %67, %146, %147, %125
  ret void
}

declare dso_local i32 @cd_set_first_param(%struct.TYPE_6__*, i8*, i8*, i64) #1

declare dso_local i64 @cd_getparam(%struct.TYPE_6__*, i8*, i32**) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @cd_ensure_capacity(%struct.TYPE_6__*, i32**, i64) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @cd_copy_data(i32**, i8*, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cd_copy_string(i32**, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
