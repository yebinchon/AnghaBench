; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_calc.c_prim.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_calc.c_prim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [14 x i8] c" ')' expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_6__*, i32)* @prim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @prim(i32* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = call i32 @get_token(i32* %12, %struct.TYPE_6__* %13)
  br label %15

15:                                               ; preds = %11, %3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %116 [
    i32 137, label %19
    i32 139, label %27
    i32 138, label %67
    i32 144, label %75
    i32 147, label %80
    i32 136, label %85
    i32 142, label %91
    i32 143, label %97
    i32 145, label %114
    i32 128, label %114
    i32 149, label %114
    i32 135, label %114
    i32 141, label %114
    i32 140, label %114
    i32 146, label %114
    i32 134, label %114
    i32 148, label %114
    i32 133, label %114
    i32 130, label %114
    i32 129, label %114
    i32 132, label %114
    i32 131, label %114
  ]

19:                                               ; preds = %15
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = call i32 @get_token(i32* %23, %struct.TYPE_6__* %24)
  %26 = load i8*, i8** %8, align 8
  store i8* %26, i8** %4, align 8
  br label %118

27:                                               ; preds = %15
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @r_str_trim(i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @r_num_get(i32* %32, i32 %35)
  %37 = call i8* @Nset(i32 %36)
  store i8* %37, i8** %8, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = call i32 @get_token(i32* %38, %struct.TYPE_6__* %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 148
  br i1 %44, label %45, label %49

45:                                               ; preds = %27
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = call i8* @expr(i32* %46, %struct.TYPE_6__* %47, i32 1)
  store i8* %48, i8** %8, align 8
  br label %49

49:                                               ; preds = %45, %27
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 144
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %8, align 8
  %56 = call i8* @Naddi(i8* %55, i32 1)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 147
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @Nsubi(i8* %63, i32 1)
  br label %65

65:                                               ; preds = %62, %57
  %66 = load i8*, i8** %8, align 8
  store i8* %66, i8** %4, align 8
  br label %118

67:                                               ; preds = %15
  %68 = load i32*, i32** %5, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = call i32 @get_token(i32* %68, %struct.TYPE_6__* %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i8* @Nneg(i8* %73)
  store i8* %74, i8** %4, align 8
  br label %118

75:                                               ; preds = %15
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = call i8* @prim(i32* %76, %struct.TYPE_6__* %77, i32 1)
  %79 = call i8* @Naddi(i8* %78, i32 1)
  store i8* %79, i8** %4, align 8
  br label %118

80:                                               ; preds = %15
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %83 = call i8* @prim(i32* %81, %struct.TYPE_6__* %82, i32 1)
  %84 = call i8* @Naddi(i8* %83, i32 -1)
  store i8* %84, i8** %4, align 8
  br label %118

85:                                               ; preds = %15
  %86 = load i8*, i8** %8, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = call i8* @prim(i32* %87, %struct.TYPE_6__* %88, i32 1)
  %90 = call i8* @Norr(i8* %86, i8* %89)
  store i8* %90, i8** %4, align 8
  br label %118

91:                                               ; preds = %15
  %92 = load i8*, i8** %8, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %95 = call i8* @prim(i32* %93, %struct.TYPE_6__* %94, i32 1)
  %96 = call i8* @Nsub(i8* %92, i8* %95)
  store i8* %96, i8** %4, align 8
  br label %118

97:                                               ; preds = %15
  %98 = load i32*, i32** %5, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %100 = call i8* @expr(i32* %98, %struct.TYPE_6__* %99, i32 1)
  store i8* %100, i8** %8, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 133
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load i32*, i32** %5, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %108 = call i32 @get_token(i32* %106, %struct.TYPE_6__* %107)
  br label %113

109:                                              ; preds = %97
  %110 = load i32*, i32** %5, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %112 = call i32 @error(i32* %110, %struct.TYPE_6__* %111, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %113

113:                                              ; preds = %109, %105
  br label %114

114:                                              ; preds = %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %113
  %115 = load i8*, i8** %8, align 8
  store i8* %115, i8** %4, align 8
  br label %118

116:                                              ; preds = %15
  %117 = load i8*, i8** %8, align 8
  store i8* %117, i8** %4, align 8
  br label %118

118:                                              ; preds = %116, %114, %91, %85, %80, %75, %67, %65, %19
  %119 = load i8*, i8** %4, align 8
  ret i8* %119
}

declare dso_local i32 @get_token(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @r_str_trim(i32) #1

declare dso_local i8* @Nset(i32) #1

declare dso_local i32 @r_num_get(i32*, i32) #1

declare dso_local i8* @expr(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i8* @Naddi(i8*, i32) #1

declare dso_local i32 @Nsubi(i8*, i32) #1

declare dso_local i8* @Nneg(i8*) #1

declare dso_local i8* @Norr(i8*, i8*) #1

declare dso_local i8* @Nsub(i8*, i8*) #1

declare dso_local i32 @error(i32*, %struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
