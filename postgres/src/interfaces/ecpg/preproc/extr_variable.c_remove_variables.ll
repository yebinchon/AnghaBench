; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_variable.c_remove_variables.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_variable.c_remove_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.variable = type { i32, %struct.variable*, %struct.variable*, i32 }
%struct.cursor = type { %struct.arguments*, %struct.arguments*, %struct.cursor* }
%struct.arguments = type { %struct.arguments*, %struct.variable* }

@allvariables = common dso_local global %struct.variable* null, align 8
@cur = common dso_local global %struct.cursor* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_variables(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.variable*, align 8
  %4 = alloca %struct.variable*, align 8
  %5 = alloca %struct.cursor*, align 8
  %6 = alloca %struct.arguments*, align 8
  %7 = alloca %struct.arguments*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load %struct.variable*, %struct.variable** @allvariables, align 8
  store %struct.variable* %8, %struct.variable** %4, align 8
  store %struct.variable* %8, %struct.variable** %3, align 8
  br label %9

9:                                                ; preds = %148, %1
  %10 = load %struct.variable*, %struct.variable** %3, align 8
  %11 = icmp ne %struct.variable* %10, null
  br i1 %11, label %12, label %149

12:                                               ; preds = %9
  %13 = load %struct.variable*, %struct.variable** %3, align 8
  %14 = getelementptr inbounds %struct.variable, %struct.variable* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %2, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %143

18:                                               ; preds = %12
  %19 = load %struct.cursor*, %struct.cursor** @cur, align 8
  store %struct.cursor* %19, %struct.cursor** %5, align 8
  br label %20

20:                                               ; preds = %98, %18
  %21 = load %struct.cursor*, %struct.cursor** %5, align 8
  %22 = icmp ne %struct.cursor* %21, null
  br i1 %22, label %23, label %102

23:                                               ; preds = %20
  %24 = load %struct.cursor*, %struct.cursor** %5, align 8
  %25 = getelementptr inbounds %struct.cursor, %struct.cursor* %24, i32 0, i32 1
  %26 = load %struct.arguments*, %struct.arguments** %25, align 8
  store %struct.arguments* %26, %struct.arguments** %7, align 8
  store %struct.arguments* %26, %struct.arguments** %6, align 8
  br label %27

27:                                               ; preds = %56, %23
  %28 = load %struct.arguments*, %struct.arguments** %6, align 8
  %29 = icmp ne %struct.arguments* %28, null
  br i1 %29, label %30, label %60

30:                                               ; preds = %27
  %31 = load %struct.variable*, %struct.variable** %3, align 8
  %32 = load %struct.arguments*, %struct.arguments** %6, align 8
  %33 = getelementptr inbounds %struct.arguments, %struct.arguments* %32, i32 0, i32 1
  %34 = load %struct.variable*, %struct.variable** %33, align 8
  %35 = icmp eq %struct.variable* %31, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load %struct.arguments*, %struct.arguments** %6, align 8
  %38 = load %struct.cursor*, %struct.cursor** %5, align 8
  %39 = getelementptr inbounds %struct.cursor, %struct.cursor* %38, i32 0, i32 1
  %40 = load %struct.arguments*, %struct.arguments** %39, align 8
  %41 = icmp eq %struct.arguments* %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.arguments*, %struct.arguments** %6, align 8
  %44 = getelementptr inbounds %struct.arguments, %struct.arguments* %43, i32 0, i32 0
  %45 = load %struct.arguments*, %struct.arguments** %44, align 8
  %46 = load %struct.cursor*, %struct.cursor** %5, align 8
  %47 = getelementptr inbounds %struct.cursor, %struct.cursor* %46, i32 0, i32 1
  store %struct.arguments* %45, %struct.arguments** %47, align 8
  br label %54

48:                                               ; preds = %36
  %49 = load %struct.arguments*, %struct.arguments** %6, align 8
  %50 = getelementptr inbounds %struct.arguments, %struct.arguments* %49, i32 0, i32 0
  %51 = load %struct.arguments*, %struct.arguments** %50, align 8
  %52 = load %struct.arguments*, %struct.arguments** %7, align 8
  %53 = getelementptr inbounds %struct.arguments, %struct.arguments* %52, i32 0, i32 0
  store %struct.arguments* %51, %struct.arguments** %53, align 8
  br label %54

54:                                               ; preds = %48, %42
  br label %55

55:                                               ; preds = %54, %30
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.arguments*, %struct.arguments** %6, align 8
  %58 = getelementptr inbounds %struct.arguments, %struct.arguments* %57, i32 0, i32 0
  %59 = load %struct.arguments*, %struct.arguments** %58, align 8
  store %struct.arguments* %59, %struct.arguments** %6, align 8
  br label %27

60:                                               ; preds = %27
  %61 = load %struct.cursor*, %struct.cursor** %5, align 8
  %62 = getelementptr inbounds %struct.cursor, %struct.cursor* %61, i32 0, i32 0
  %63 = load %struct.arguments*, %struct.arguments** %62, align 8
  store %struct.arguments* %63, %struct.arguments** %7, align 8
  store %struct.arguments* %63, %struct.arguments** %6, align 8
  br label %64

64:                                               ; preds = %93, %60
  %65 = load %struct.arguments*, %struct.arguments** %6, align 8
  %66 = icmp ne %struct.arguments* %65, null
  br i1 %66, label %67, label %97

67:                                               ; preds = %64
  %68 = load %struct.variable*, %struct.variable** %3, align 8
  %69 = load %struct.arguments*, %struct.arguments** %6, align 8
  %70 = getelementptr inbounds %struct.arguments, %struct.arguments* %69, i32 0, i32 1
  %71 = load %struct.variable*, %struct.variable** %70, align 8
  %72 = icmp eq %struct.variable* %68, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %67
  %74 = load %struct.arguments*, %struct.arguments** %6, align 8
  %75 = load %struct.cursor*, %struct.cursor** %5, align 8
  %76 = getelementptr inbounds %struct.cursor, %struct.cursor* %75, i32 0, i32 0
  %77 = load %struct.arguments*, %struct.arguments** %76, align 8
  %78 = icmp eq %struct.arguments* %74, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.arguments*, %struct.arguments** %6, align 8
  %81 = getelementptr inbounds %struct.arguments, %struct.arguments* %80, i32 0, i32 0
  %82 = load %struct.arguments*, %struct.arguments** %81, align 8
  %83 = load %struct.cursor*, %struct.cursor** %5, align 8
  %84 = getelementptr inbounds %struct.cursor, %struct.cursor* %83, i32 0, i32 0
  store %struct.arguments* %82, %struct.arguments** %84, align 8
  br label %91

85:                                               ; preds = %73
  %86 = load %struct.arguments*, %struct.arguments** %6, align 8
  %87 = getelementptr inbounds %struct.arguments, %struct.arguments* %86, i32 0, i32 0
  %88 = load %struct.arguments*, %struct.arguments** %87, align 8
  %89 = load %struct.arguments*, %struct.arguments** %7, align 8
  %90 = getelementptr inbounds %struct.arguments, %struct.arguments* %89, i32 0, i32 0
  store %struct.arguments* %88, %struct.arguments** %90, align 8
  br label %91

91:                                               ; preds = %85, %79
  br label %92

92:                                               ; preds = %91, %67
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.arguments*, %struct.arguments** %6, align 8
  %95 = getelementptr inbounds %struct.arguments, %struct.arguments* %94, i32 0, i32 0
  %96 = load %struct.arguments*, %struct.arguments** %95, align 8
  store %struct.arguments* %96, %struct.arguments** %6, align 8
  br label %64

97:                                               ; preds = %64
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.cursor*, %struct.cursor** %5, align 8
  %100 = getelementptr inbounds %struct.cursor, %struct.cursor* %99, i32 0, i32 2
  %101 = load %struct.cursor*, %struct.cursor** %100, align 8
  store %struct.cursor* %101, %struct.cursor** %5, align 8
  br label %20

102:                                              ; preds = %20
  %103 = load %struct.variable*, %struct.variable** %3, align 8
  %104 = load %struct.variable*, %struct.variable** @allvariables, align 8
  %105 = icmp eq %struct.variable* %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load %struct.variable*, %struct.variable** %3, align 8
  %108 = getelementptr inbounds %struct.variable, %struct.variable* %107, i32 0, i32 1
  %109 = load %struct.variable*, %struct.variable** %108, align 8
  store %struct.variable* %109, %struct.variable** @allvariables, align 8
  store %struct.variable* %109, %struct.variable** %4, align 8
  br label %116

110:                                              ; preds = %102
  %111 = load %struct.variable*, %struct.variable** %3, align 8
  %112 = getelementptr inbounds %struct.variable, %struct.variable* %111, i32 0, i32 1
  %113 = load %struct.variable*, %struct.variable** %112, align 8
  %114 = load %struct.variable*, %struct.variable** %4, align 8
  %115 = getelementptr inbounds %struct.variable, %struct.variable* %114, i32 0, i32 1
  store %struct.variable* %113, %struct.variable** %115, align 8
  br label %116

116:                                              ; preds = %110, %106
  %117 = load %struct.variable*, %struct.variable** %3, align 8
  %118 = getelementptr inbounds %struct.variable, %struct.variable* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @ECPGfree_type(i32 %119)
  %121 = load %struct.variable*, %struct.variable** %3, align 8
  %122 = getelementptr inbounds %struct.variable, %struct.variable* %121, i32 0, i32 2
  %123 = load %struct.variable*, %struct.variable** %122, align 8
  %124 = call i32 @free(%struct.variable* %123)
  %125 = load %struct.variable*, %struct.variable** %3, align 8
  %126 = call i32 @free(%struct.variable* %125)
  %127 = load %struct.variable*, %struct.variable** %4, align 8
  %128 = load %struct.variable*, %struct.variable** @allvariables, align 8
  %129 = icmp eq %struct.variable* %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %116
  %131 = load %struct.variable*, %struct.variable** @allvariables, align 8
  store %struct.variable* %131, %struct.variable** %3, align 8
  br label %142

132:                                              ; preds = %116
  %133 = load %struct.variable*, %struct.variable** %4, align 8
  %134 = icmp ne %struct.variable* %133, null
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load %struct.variable*, %struct.variable** %4, align 8
  %137 = getelementptr inbounds %struct.variable, %struct.variable* %136, i32 0, i32 1
  %138 = load %struct.variable*, %struct.variable** %137, align 8
  br label %140

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139, %135
  %141 = phi %struct.variable* [ %138, %135 ], [ null, %139 ]
  store %struct.variable* %141, %struct.variable** %3, align 8
  br label %142

142:                                              ; preds = %140, %130
  br label %148

143:                                              ; preds = %12
  %144 = load %struct.variable*, %struct.variable** %3, align 8
  store %struct.variable* %144, %struct.variable** %4, align 8
  %145 = load %struct.variable*, %struct.variable** %4, align 8
  %146 = getelementptr inbounds %struct.variable, %struct.variable* %145, i32 0, i32 1
  %147 = load %struct.variable*, %struct.variable** %146, align 8
  store %struct.variable* %147, %struct.variable** %3, align 8
  br label %148

148:                                              ; preds = %143, %142
  br label %9

149:                                              ; preds = %9
  ret void
}

declare dso_local i32 @ECPGfree_type(i32) #1

declare dso_local i32 @free(%struct.variable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
