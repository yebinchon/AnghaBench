; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_node.c_equal_mpv_value.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_node.c_equal_mpv_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_byte_array = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i8**, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @equal_mpv_value(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mpv_byte_array*, align 8
  %9 = alloca %struct.mpv_byte_array*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %147 [
    i32 130, label %14
    i32 128, label %15
    i32 129, label %15
    i32 135, label %25
    i32 134, label %34
    i32 136, label %43
    i32 133, label %52
    i32 137, label %56
    i32 132, label %82
    i32 131, label %82
  ]

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %149

15:                                               ; preds = %3, %3
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to i8**
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strcmp(i8* %18, i8* %21)
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %4, align 4
  br label %149

25:                                               ; preds = %3
  %26 = load i8*, i8** %5, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %28, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %4, align 4
  br label %149

34:                                               ; preds = %3
  %35 = load i8*, i8** %5, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %37, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %149

43:                                               ; preds = %3
  %44 = load i8*, i8** %5, align 8
  %45 = bitcast i8* %44 to double*
  %46 = load double, double* %45, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = bitcast i8* %47 to double*
  %49 = load double, double* %48, align 8
  %50 = fcmp oeq double %46, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %149

52:                                               ; preds = %3
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @equal_mpv_node(i8* %53, i8* %54)
  store i32 %55, i32* %4, align 4
  br label %149

56:                                               ; preds = %3
  %57 = load i8*, i8** %5, align 8
  %58 = bitcast i8* %57 to %struct.mpv_byte_array*
  store %struct.mpv_byte_array* %58, %struct.mpv_byte_array** %8, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = bitcast i8* %59 to %struct.mpv_byte_array*
  store %struct.mpv_byte_array* %60, %struct.mpv_byte_array** %9, align 8
  %61 = load %struct.mpv_byte_array*, %struct.mpv_byte_array** %8, align 8
  %62 = getelementptr inbounds %struct.mpv_byte_array, %struct.mpv_byte_array* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mpv_byte_array*, %struct.mpv_byte_array** %9, align 8
  %65 = getelementptr inbounds %struct.mpv_byte_array, %struct.mpv_byte_array* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %149

69:                                               ; preds = %56
  %70 = load %struct.mpv_byte_array*, %struct.mpv_byte_array** %8, align 8
  %71 = getelementptr inbounds %struct.mpv_byte_array, %struct.mpv_byte_array* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mpv_byte_array*, %struct.mpv_byte_array** %9, align 8
  %74 = getelementptr inbounds %struct.mpv_byte_array, %struct.mpv_byte_array* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mpv_byte_array*, %struct.mpv_byte_array** %8, align 8
  %77 = getelementptr inbounds %struct.mpv_byte_array, %struct.mpv_byte_array* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @memcmp(i32 %72, i32 %75, i32 %78)
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %4, align 4
  br label %149

82:                                               ; preds = %3, %3
  %83 = load i8*, i8** %5, align 8
  %84 = bitcast i8* %83 to %struct.TYPE_2__**
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  store %struct.TYPE_2__* %85, %struct.TYPE_2__** %10, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = bitcast i8* %86 to %struct.TYPE_2__**
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  store %struct.TYPE_2__* %88, %struct.TYPE_2__** %11, align 8
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %149

97:                                               ; preds = %82
  store i32 0, i32* %12, align 4
  br label %98

98:                                               ; preds = %143, %97
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %146

104:                                              ; preds = %98
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %105, 131
  br i1 %106, label %107, label %126

107:                                              ; preds = %104
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i8**, i8*** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i8**, i8*** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @strcmp(i8* %114, i8* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %149

125:                                              ; preds = %107
  br label %126

126:                                              ; preds = %125, %104
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = call i32 @equal_mpv_node(i8* %132, i8* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %126
  store i32 0, i32* %4, align 4
  br label %149

142:                                              ; preds = %126
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %98

146:                                              ; preds = %98
  store i32 1, i32* %4, align 4
  br label %149

147:                                              ; preds = %3
  %148 = call i32 (...) @abort() #3
  unreachable

149:                                              ; preds = %146, %141, %124, %96, %69, %68, %52, %43, %34, %25, %15, %14
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @equal_mpv_node(i8*, i8*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
