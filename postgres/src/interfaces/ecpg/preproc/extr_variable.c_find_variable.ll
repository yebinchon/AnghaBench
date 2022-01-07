; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_variable.c_find_variable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_variable.c_find_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.variable = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c".[-\00", align 1
@PARSE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"variable \22%s\22 is not declared\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.variable* @find_variable(i8* %0) #0 {
  %2 = alloca %struct.variable*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.variable*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @strpbrk(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %199

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 91
  br i1 %17, label %18, label %193

18:                                               ; preds = %13
  store i32 1, i32* %7, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %36, %18
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %34 [
    i32 91, label %28
    i32 93, label %31
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %35

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %7, align 4
  br label %35

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %31, %28
  br label %36

36:                                               ; preds = %35
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  br label %21

39:                                               ; preds = %21
  %40 = load i8*, i8** %5, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 46
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i8*, i8** %3, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call %struct.variable* @find_struct(i8* %45, i8* %46, i8* %47)
  store %struct.variable* %48, %struct.variable** %6, align 8
  br label %192

49:                                               ; preds = %39
  %50 = load i8*, i8** %4, align 8
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %8, align 1
  %52 = load i8*, i8** %4, align 8
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %3, align 8
  %54 = call %struct.variable* @find_simple(i8* %53)
  store %struct.variable* %54, %struct.variable** %6, align 8
  %55 = load %struct.variable*, %struct.variable** %6, align 8
  %56 = icmp eq %struct.variable* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i32, i32* @PARSE_ERROR, align 4
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @mmfatal(i32 %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %57, %49
  %62 = load i8, i8* %8, align 1
  %63 = load i8*, i8** %4, align 8
  store i8 %62, i8* %63, align 1
  %64 = load %struct.variable*, %struct.variable** %6, align 8
  %65 = getelementptr inbounds %struct.variable, %struct.variable* %64, i32 0, i32 1
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %161 [
    i32 130, label %72
    i32 129, label %121
    i32 128, label %121
  ]

72:                                               ; preds = %61
  %73 = load i8*, i8** %3, align 8
  %74 = load %struct.variable*, %struct.variable** %6, align 8
  %75 = getelementptr inbounds %struct.variable, %struct.variable* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.variable*, %struct.variable** %6, align 8
  %86 = getelementptr inbounds %struct.variable, %struct.variable* %85, i32 0, i32 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.variable*, %struct.variable** %6, align 8
  %97 = getelementptr inbounds %struct.variable, %struct.variable* %96, i32 0, i32 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ECPGmake_simple_type(i32 %84, i32 %95, i32 %106)
  %108 = load %struct.variable*, %struct.variable** %6, align 8
  %109 = getelementptr inbounds %struct.variable, %struct.variable* %108, i32 0, i32 1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @ECPGmake_array_type(i32 %107, i32 %115)
  %117 = load %struct.variable*, %struct.variable** %6, align 8
  %118 = getelementptr inbounds %struct.variable, %struct.variable* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call %struct.variable* @new_variable(i8* %73, i32 %116, i32 %119)
  store %struct.variable* %120, %struct.variable** %2, align 8
  br label %211

121:                                              ; preds = %61, %61
  %122 = load i8*, i8** %3, align 8
  %123 = load %struct.variable*, %struct.variable** %6, align 8
  %124 = getelementptr inbounds %struct.variable, %struct.variable* %123, i32 0, i32 1
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.variable*, %struct.variable** %6, align 8
  %133 = getelementptr inbounds %struct.variable, %struct.variable* %132, i32 0, i32 1
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.variable*, %struct.variable** %6, align 8
  %141 = getelementptr inbounds %struct.variable, %struct.variable* %140, i32 0, i32 1
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.variable*, %struct.variable** %6, align 8
  %149 = getelementptr inbounds %struct.variable, %struct.variable* %148, i32 0, i32 1
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @ECPGmake_struct_type(i32 %131, i32 %139, i32 %147, i32 %155)
  %157 = load %struct.variable*, %struct.variable** %6, align 8
  %158 = getelementptr inbounds %struct.variable, %struct.variable* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call %struct.variable* @new_variable(i8* %122, i32 %156, i32 %159)
  store %struct.variable* %160, %struct.variable** %2, align 8
  br label %211

161:                                              ; preds = %61
  %162 = load i8*, i8** %3, align 8
  %163 = load %struct.variable*, %struct.variable** %6, align 8
  %164 = getelementptr inbounds %struct.variable, %struct.variable* %163, i32 0, i32 1
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.variable*, %struct.variable** %6, align 8
  %172 = getelementptr inbounds %struct.variable, %struct.variable* %171, i32 0, i32 1
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.variable*, %struct.variable** %6, align 8
  %180 = getelementptr inbounds %struct.variable, %struct.variable* %179, i32 0, i32 1
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @ECPGmake_simple_type(i32 %170, i32 %178, i32 %186)
  %188 = load %struct.variable*, %struct.variable** %6, align 8
  %189 = getelementptr inbounds %struct.variable, %struct.variable* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call %struct.variable* @new_variable(i8* %162, i32 %187, i32 %190)
  store %struct.variable* %191, %struct.variable** %2, align 8
  br label %211

192:                                              ; preds = %44
  br label %198

193:                                              ; preds = %13
  %194 = load i8*, i8** %3, align 8
  %195 = load i8*, i8** %4, align 8
  %196 = load i8*, i8** %4, align 8
  %197 = call %struct.variable* @find_struct(i8* %194, i8* %195, i8* %196)
  store %struct.variable* %197, %struct.variable** %6, align 8
  br label %198

198:                                              ; preds = %193, %192
  br label %202

199:                                              ; preds = %1
  %200 = load i8*, i8** %3, align 8
  %201 = call %struct.variable* @find_simple(i8* %200)
  store %struct.variable* %201, %struct.variable** %6, align 8
  br label %202

202:                                              ; preds = %199, %198
  %203 = load %struct.variable*, %struct.variable** %6, align 8
  %204 = icmp eq %struct.variable* %203, null
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = load i32, i32* @PARSE_ERROR, align 4
  %207 = load i8*, i8** %3, align 8
  %208 = call i32 @mmfatal(i32 %206, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %207)
  br label %209

209:                                              ; preds = %205, %202
  %210 = load %struct.variable*, %struct.variable** %6, align 8
  store %struct.variable* %210, %struct.variable** %2, align 8
  br label %211

211:                                              ; preds = %209, %161, %121, %72
  %212 = load %struct.variable*, %struct.variable** %2, align 8
  ret %struct.variable* %212
}

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local %struct.variable* @find_struct(i8*, i8*, i8*) #1

declare dso_local %struct.variable* @find_simple(i8*) #1

declare dso_local i32 @mmfatal(i32, i8*, i8*) #1

declare dso_local %struct.variable* @new_variable(i8*, i32, i32) #1

declare dso_local i32 @ECPGmake_array_type(i32, i32) #1

declare dso_local i32 @ECPGmake_simple_type(i32, i32, i32) #1

declare dso_local i32 @ECPGmake_struct_type(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
