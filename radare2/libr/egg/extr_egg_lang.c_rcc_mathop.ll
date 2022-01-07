; ModuleID = '/home/carl/AnghaBench/radare2/libr/egg/extr_egg_lang.c_rcc_mathop.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/egg/extr_egg_lang.c_rcc_mathop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* (%struct.TYPE_9__*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8**, i32)* @rcc_mathop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcc_mathop(%struct.TYPE_9__* %0, i8** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %7, align 8
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %29, %3
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i8**, i8*** %5, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @is_space(i8 signext %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %21, %15
  %28 = phi i1 [ false, %15 ], [ %26, %21 ]
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %30, align 8
  br label %15

33:                                               ; preds = %27
  %34 = load i8**, i8*** %5, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  store i8* %36, i8** %10, align 8
  br label %37

37:                                               ; preds = %135, %33
  %38 = load i8**, i8*** %5, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call i64 @is_op(i8 signext %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @is_var(i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  br label %54

53:                                               ; preds = %43, %37
  br label %54

54:                                               ; preds = %53, %48
  %55 = phi i32 [ %52, %48 ], [ 61, %53 ]
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %9, align 1
  %57 = load i8**, i8*** %5, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @is_op(i8 signext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %54
  %63 = load i8**, i8*** %5, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @is_var(i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i8**, i8*** %5, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  br label %74

71:                                               ; preds = %62, %54
  %72 = load i8**, i8*** %5, align 8
  %73 = load i8*, i8** %72, align 8
  br label %74

74:                                               ; preds = %71, %67
  %75 = phi i8* [ %70, %67 ], [ %73, %71 ]
  %76 = load i8**, i8*** %5, align 8
  store i8* %75, i8** %76, align 8
  %77 = call i32 @get_op(i8** %10)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %74
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = load i8**, i8*** %5, align 8
  %84 = load i32, i32* %8, align 4
  call void @rcc_mathop(%struct.TYPE_9__* %82, i8** %83, i32 %84)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i8* (%struct.TYPE_9__*, i32)*, i8* (%struct.TYPE_9__*, i32)** %87, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sub nsw i32 %90, 1
  %92 = call i8* %88(%struct.TYPE_9__* %89, i32 %91)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i8* (%struct.TYPE_9__*, i32)*, i8* (%struct.TYPE_9__*, i32)** %94, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sub nsw i32 %97, 1
  %99 = call i8* %95(%struct.TYPE_9__* %96, i32 %98)
  %100 = call i32 @strdup(i8* %99)
  %101 = load i8, i8* %9, align 1
  %102 = call i32 @rcc_internal_mathop(%struct.TYPE_9__* %85, i8* %92, i32 %100, i8 signext %101)
  %103 = load i8**, i8*** %5, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  store i8* %105, i8** %10, align 8
  br label %124

106:                                              ; preds = %74
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = load i8**, i8*** %5, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i8* (%struct.TYPE_9__*, i32)*, i8* (%struct.TYPE_9__*, i32)** %111, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sub nsw i32 %114, 1
  %116 = call i8* %112(%struct.TYPE_9__* %113, i32 %115)
  %117 = call i32 @strdup(i8* %116)
  %118 = load i8, i8* %9, align 1
  %119 = call i32 @rcc_internal_mathop(%struct.TYPE_9__* %107, i8* %109, i32 %117, i8 signext %118)
  %120 = load i8*, i8** %10, align 8
  %121 = load i8**, i8*** %5, align 8
  store i8* %120, i8** %121, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %10, align 8
  br label %124

124:                                              ; preds = %106, %81
  br label %125

125:                                              ; preds = %124
  %126 = load i8**, i8*** %5, align 8
  %127 = load i8*, i8** %126, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp sge i32 %132, %133
  br label %135

135:                                              ; preds = %131, %125
  %136 = phi i1 [ false, %125 ], [ %134, %131 ]
  br i1 %136, label %37, label %137

137:                                              ; preds = %135
  ret void
}

declare dso_local i64 @is_space(i8 signext) #1

declare dso_local i64 @is_op(i8 signext) #1

declare dso_local i32 @is_var(i8*) #1

declare dso_local i32 @get_op(i8**) #1

declare dso_local i32 @rcc_internal_mathop(%struct.TYPE_9__*, i8*, i32, i8 signext) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
