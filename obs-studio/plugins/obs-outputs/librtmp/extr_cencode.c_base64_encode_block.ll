; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_cencode.c_base64_encode_block.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_cencode.c_base64_encode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @base64_encode_block(i8* %0, i32 %1, i8* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %8, align 8
  store i8* %20, i8** %12, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 4
  store i8 %23, i8* %13, align 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %149 [
    i32 130, label %29
    i32 129, label %64
    i32 128, label %102
  ]

27:                                               ; No predecessors!
  br label %28

28:                                               ; preds = %27, %118
  br label %29

29:                                               ; preds = %4, %28
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = icmp eq i8* %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i8, i8* %13, align 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i8 %34, i8* %36, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 130, i32* %38, align 4
  %39 = load i8*, i8** %12, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  br label %156

45:                                               ; preds = %29
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %10, align 8
  %48 = load i8, i8* %46, align 1
  store i8 %48, i8* %14, align 1
  %49 = load i8, i8* %14, align 1
  %50 = sext i8 %49 to i32
  %51 = and i32 %50, 252
  %52 = ashr i32 %51, 2
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %13, align 1
  %54 = load i8, i8* %13, align 1
  %55 = call i8* @base64_encode_value(i8 signext %54)
  %56 = ptrtoint i8* %55 to i8
  %57 = load i8*, i8** %12, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %12, align 8
  store i8 %56, i8* %57, align 1
  %59 = load i8, i8* %14, align 1
  %60 = sext i8 %59 to i32
  %61 = and i32 %60, 3
  %62 = shl i32 %61, 4
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %13, align 1
  br label %64

64:                                               ; preds = %4, %45
  %65 = load i8*, i8** %10, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = icmp eq i8* %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load i8, i8* %13, align 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i8 %69, i8* %71, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32 129, i32* %73, align 4
  %74 = load i8*, i8** %12, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %5, align 4
  br label %156

80:                                               ; preds = %64
  %81 = load i8*, i8** %10, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %10, align 8
  %83 = load i8, i8* %81, align 1
  store i8 %83, i8* %14, align 1
  %84 = load i8, i8* %14, align 1
  %85 = sext i8 %84 to i32
  %86 = and i32 %85, 240
  %87 = ashr i32 %86, 4
  %88 = load i8, i8* %13, align 1
  %89 = sext i8 %88 to i32
  %90 = or i32 %89, %87
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %13, align 1
  %92 = load i8, i8* %13, align 1
  %93 = call i8* @base64_encode_value(i8 signext %92)
  %94 = ptrtoint i8* %93 to i8
  %95 = load i8*, i8** %12, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %12, align 8
  store i8 %94, i8* %95, align 1
  %97 = load i8, i8* %14, align 1
  %98 = sext i8 %97 to i32
  %99 = and i32 %98, 15
  %100 = shl i32 %99, 2
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %13, align 1
  br label %102

102:                                              ; preds = %4, %80
  %103 = load i8*, i8** %10, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = icmp eq i8* %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load i8, i8* %13, align 1
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i8 %107, i8* %109, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  store i32 128, i32* %111, align 4
  %112 = load i8*, i8** %12, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %5, align 4
  br label %156

118:                                              ; preds = %102
  %119 = load i8*, i8** %10, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %10, align 8
  %121 = load i8, i8* %119, align 1
  store i8 %121, i8* %14, align 1
  %122 = load i8, i8* %14, align 1
  %123 = sext i8 %122 to i32
  %124 = and i32 %123, 192
  %125 = ashr i32 %124, 6
  %126 = load i8, i8* %13, align 1
  %127 = sext i8 %126 to i32
  %128 = or i32 %127, %125
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %13, align 1
  %130 = load i8, i8* %13, align 1
  %131 = call i8* @base64_encode_value(i8 signext %130)
  %132 = ptrtoint i8* %131 to i8
  %133 = load i8*, i8** %12, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %12, align 8
  store i8 %132, i8* %133, align 1
  %135 = load i8, i8* %14, align 1
  %136 = sext i8 %135 to i32
  %137 = and i32 %136, 63
  %138 = ashr i32 %137, 0
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %13, align 1
  %140 = load i8, i8* %13, align 1
  %141 = call i8* @base64_encode_value(i8 signext %140)
  %142 = ptrtoint i8* %141 to i8
  %143 = load i8*, i8** %12, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %12, align 8
  store i8 %142, i8* %143, align 1
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  br label %28

149:                                              ; preds = %4
  %150 = load i8*, i8** %12, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = ptrtoint i8* %150 to i64
  %153 = ptrtoint i8* %151 to i64
  %154 = sub i64 %152, %153
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %149, %106, %68, %33
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i8* @base64_encode_value(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
