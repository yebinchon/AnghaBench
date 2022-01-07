; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_type.c_ECPGstruct_member_dup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_type.c_ECPGstruct_member_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ECPGstruct_member = type { %struct.ECPGstruct_member*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ECPGtype = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ECPGstruct_member* @ECPGstruct_member_dup(%struct.ECPGstruct_member* %0) #0 {
  %2 = alloca %struct.ECPGstruct_member*, align 8
  %3 = alloca %struct.ECPGstruct_member*, align 8
  %4 = alloca %struct.ECPGtype*, align 8
  store %struct.ECPGstruct_member* %0, %struct.ECPGstruct_member** %2, align 8
  store %struct.ECPGstruct_member* null, %struct.ECPGstruct_member** %3, align 8
  br label %5

5:                                                ; preds = %142, %1
  %6 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %7 = icmp ne %struct.ECPGstruct_member* %6, null
  br i1 %7, label %8, label %151

8:                                                ; preds = %5
  %9 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %10 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %9, i32 0, i32 2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %125 [
    i32 129, label %14
    i32 128, label %14
    i32 130, label %37
  ]

14:                                               ; preds = %8, %8
  %15 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %16 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %15, i32 0, i32 2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %22 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %27 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %26, i32 0, i32 2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %32 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %31, i32 0, i32 2
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.ECPGtype* @ECPGmake_struct_type(i32 %20, i32 %25, i32 %30, i32 %35)
  store %struct.ECPGtype* %36, %struct.ECPGtype** %4, align 8
  br label %142

37:                                               ; preds = %8
  %38 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %39 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %38, i32 0, i32 2
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 129
  br i1 %46, label %57, label %47

47:                                               ; preds = %37
  %48 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %49 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %48, i32 0, i32 2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 128
  br i1 %56, label %57, label %92

57:                                               ; preds = %47, %37
  %58 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %59 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %58, i32 0, i32 2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %68 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %67, i32 0, i32 2
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %76 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %75, i32 0, i32 2
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %84 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %83, i32 0, i32 2
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call %struct.ECPGtype* @ECPGmake_struct_type(i32 %66, i32 %74, i32 %82, i32 %90)
  store %struct.ECPGtype* %91, %struct.ECPGtype** %4, align 8
  br label %124

92:                                               ; preds = %47
  %93 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %94 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %93, i32 0, i32 2
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %102 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %101, i32 0, i32 2
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %110 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %109, i32 0, i32 2
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call %struct.ECPGtype* @ECPGmake_simple_type(i32 %100, i32 %108, i32 %116)
  %118 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %119 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %118, i32 0, i32 2
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call %struct.ECPGtype* @ECPGmake_array_type(%struct.ECPGtype* %117, i32 %122)
  store %struct.ECPGtype* %123, %struct.ECPGtype** %4, align 8
  br label %124

124:                                              ; preds = %92, %57
  br label %142

125:                                              ; preds = %8
  %126 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %127 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %126, i32 0, i32 2
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %132 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %131, i32 0, i32 2
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %137 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %136, i32 0, i32 2
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call %struct.ECPGtype* @ECPGmake_simple_type(i32 %130, i32 %135, i32 %140)
  store %struct.ECPGtype* %141, %struct.ECPGtype** %4, align 8
  br label %142

142:                                              ; preds = %125, %124, %14
  %143 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %144 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.ECPGtype*, %struct.ECPGtype** %4, align 8
  %147 = call i32 @ECPGmake_struct_member(i32 %145, %struct.ECPGtype* %146, %struct.ECPGstruct_member** %3)
  %148 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %149 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %148, i32 0, i32 0
  %150 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %149, align 8
  store %struct.ECPGstruct_member* %150, %struct.ECPGstruct_member** %2, align 8
  br label %5

151:                                              ; preds = %5
  %152 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %3, align 8
  ret %struct.ECPGstruct_member* %152
}

declare dso_local %struct.ECPGtype* @ECPGmake_struct_type(i32, i32, i32, i32) #1

declare dso_local %struct.ECPGtype* @ECPGmake_array_type(%struct.ECPGtype*, i32) #1

declare dso_local %struct.ECPGtype* @ECPGmake_simple_type(i32, i32, i32) #1

declare dso_local i32 @ECPGmake_struct_member(i32, %struct.ECPGtype*, %struct.ECPGstruct_member**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
