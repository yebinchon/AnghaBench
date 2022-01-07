; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/lib/extr_rbtree.c_rbt_insert_fixup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/lib/extr_rbtree.c_rbt_insert_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__* }

@RBTRED = common dso_local global i64 0, align 8
@RBTBLACK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*)* @rbt_insert_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbt_insert_fixup(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  br label %7

7:                                                ; preds = %181, %2
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = icmp ne %struct.TYPE_10__* %8, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %7
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RBTRED, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %13, %7
  %22 = phi i1 [ false, %7 ], [ %20, %13 ]
  br i1 %22, label %23, label %182

23:                                               ; preds = %21
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = icmp eq %struct.TYPE_10__* %26, %33
  br i1 %34, label %35, label %108

35:                                               ; preds = %23
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %5, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RBTRED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %35
  %49 = load i8*, i8** @RBTBLACK, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i64 %50, i64* %54, align 8
  %55 = load i8*, i8** @RBTBLACK, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i64, i64* @RBTRED, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i64 %59, i64* %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %4, align 8
  br label %107

71:                                               ; preds = %35
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = icmp eq %struct.TYPE_10__* %72, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %71
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %4, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = call i32 @rbt_rotate_left(%struct.TYPE_9__* %83, %struct.TYPE_10__* %84)
  br label %86

86:                                               ; preds = %79, %71
  %87 = load i8*, i8** @RBTBLACK, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  store i64 %88, i64* %92, align 8
  %93 = load i64, i64* @RBTRED, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store i64 %93, i64* %99, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = call i32 @rbt_rotate_right(%struct.TYPE_9__* %100, %struct.TYPE_10__* %105)
  br label %107

107:                                              ; preds = %86, %48
  br label %181

108:                                              ; preds = %23
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  store %struct.TYPE_10__* %115, %struct.TYPE_10__** %6, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @RBTRED, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %144

121:                                              ; preds = %108
  %122 = load i8*, i8** @RBTBLACK, align 8
  %123 = ptrtoint i8* %122 to i64
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  store i64 %123, i64* %127, align 8
  %128 = load i8*, i8** @RBTBLACK, align 8
  %129 = ptrtoint i8* %128 to i64
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load i64, i64* @RBTRED, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  store i64 %132, i64* %138, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  store %struct.TYPE_10__* %143, %struct.TYPE_10__** %4, align 8
  br label %180

144:                                              ; preds = %108
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = icmp eq %struct.TYPE_10__* %145, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %144
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  store %struct.TYPE_10__* %155, %struct.TYPE_10__** %4, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %158 = call i32 @rbt_rotate_right(%struct.TYPE_9__* %156, %struct.TYPE_10__* %157)
  br label %159

159:                                              ; preds = %152, %144
  %160 = load i8*, i8** @RBTBLACK, align 8
  %161 = ptrtoint i8* %160 to i64
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  store i64 %161, i64* %165, align 8
  %166 = load i64, i64* @RBTRED, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  store i64 %166, i64* %172, align 8
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = call i32 @rbt_rotate_left(%struct.TYPE_9__* %173, %struct.TYPE_10__* %178)
  br label %180

180:                                              ; preds = %159, %121
  br label %181

181:                                              ; preds = %180, %107
  br label %7

182:                                              ; preds = %21
  %183 = load i8*, i8** @RBTBLACK, align 8
  %184 = ptrtoint i8* %183 to i64
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  store i64 %184, i64* %188, align 8
  ret void
}

declare dso_local i32 @rbt_rotate_left(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @rbt_rotate_right(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
