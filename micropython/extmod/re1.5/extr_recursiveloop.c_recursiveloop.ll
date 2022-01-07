; ModuleID = '/home/carl/AnghaBench/micropython/extmod/re1.5/extr_recursiveloop.c_recursiveloop.c'
source_filename = "/home/carl/AnghaBench/micropython/extmod/re1.5/extr_recursiveloop.c_recursiveloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"recursiveloop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.TYPE_3__*, i8**, i32)* @recursiveloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recursiveloop(i8* %0, i8* %1, %struct.TYPE_3__* %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = call i32 (...) @re1_5_stack_chk()
  br label %15

15:                                               ; preds = %170, %169, %161, %128, %119, %98, %76, %70, %53, %44, %5
  %16 = load i8*, i8** %7, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i64 @inst_is_consumer(i8 signext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp uge i8* %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %172

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %15
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %7, align 8
  %31 = load i8, i8* %29, align 1
  %32 = sext i8 %31 to i32
  switch i32 %32, label %170 [
    i32 137, label %33
    i32 139, label %44
    i32 136, label %47
    i32 135, label %47
    i32 131, label %64
    i32 132, label %75
    i32 133, label %76
    i32 128, label %85
    i32 130, label %103
    i32 129, label %120
    i32 138, label %154
    i32 134, label %162
  ]

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  %39 = load i8, i8* %37, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %36, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %172

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %28, %43
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %8, align 8
  br label %15

47:                                               ; preds = %28, %28
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @_re1_5_classmatch(i8* %48, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %172

53:                                               ; preds = %47
  %54 = load i8*, i8** %7, align 8
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = mul nsw i32 %56, 2
  %58 = add nsw i32 %57, 1
  %59 = load i8*, i8** %7, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  br label %15

64:                                               ; preds = %28
  %65 = load i8*, i8** %7, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @_re1_5_namedclassmatch(i8* %65, i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %172

70:                                               ; preds = %64
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %7, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %8, align 8
  br label %15

75:                                               ; preds = %28
  store i32 1, i32* %6, align 4
  br label %172

76:                                               ; preds = %28
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %7, align 8
  %79 = load i8, i8* %77, align 1
  %80 = sext i8 %79 to i32
  store i32 %80, i32* %13, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8* %84, i8** %7, align 8
  br label %15

85:                                               ; preds = %28
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %7, align 8
  %88 = load i8, i8* %86, align 1
  %89 = sext i8 %88 to i32
  store i32 %89, i32* %13, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %93 = load i8**, i8*** %10, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @recursiveloop(i8* %90, i8* %91, %struct.TYPE_3__* %92, i8** %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  store i32 1, i32* %6, align 4
  br label %172

98:                                               ; preds = %85
  %99 = load i8*, i8** %7, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  store i8* %102, i8** %7, align 8
  br label %15

103:                                              ; preds = %28
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %7, align 8
  %106 = load i8, i8* %104, align 1
  %107 = sext i8 %106 to i32
  store i32 %107, i32* %13, align 4
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8*, i8** %8, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %114 = load i8**, i8*** %10, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @recursiveloop(i8* %111, i8* %112, %struct.TYPE_3__* %113, i8** %114, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %103
  store i32 1, i32* %6, align 4
  br label %172

119:                                              ; preds = %103
  br label %15

120:                                              ; preds = %28
  %121 = load i8*, i8** %7, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %7, align 8
  %123 = load i8, i8* %121, align 1
  %124 = zext i8 %123 to i32
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp sge i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %15

129:                                              ; preds = %120
  %130 = load i8**, i8*** %10, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  store i8* %134, i8** %12, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = load i8**, i8*** %10, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  store i8* %135, i8** %139, align 8
  %140 = load i8*, i8** %7, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %143 = load i8**, i8*** %10, align 8
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @recursiveloop(i8* %140, i8* %141, %struct.TYPE_3__* %142, i8** %143, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %129
  store i32 1, i32* %6, align 4
  br label %172

148:                                              ; preds = %129
  %149 = load i8*, i8** %12, align 8
  %150 = load i8**, i8*** %10, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  store i8* %149, i8** %153, align 8
  store i32 0, i32* %6, align 4
  br label %172

154:                                              ; preds = %28
  %155 = load i8*, i8** %8, align 8
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = icmp ne i8* %155, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  store i32 0, i32* %6, align 4
  br label %172

161:                                              ; preds = %154
  br label %15

162:                                              ; preds = %28
  %163 = load i8*, i8** %8, align 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %163, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  store i32 0, i32* %6, align 4
  br label %172

169:                                              ; preds = %162
  br label %15

170:                                              ; preds = %28
  %171 = call i32 @re1_5_fatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %15

172:                                              ; preds = %168, %160, %148, %147, %118, %97, %75, %69, %52, %42, %26
  %173 = load i32, i32* %6, align 4
  ret i32 %173
}

declare dso_local i32 @re1_5_stack_chk(...) #1

declare dso_local i64 @inst_is_consumer(i8 signext) #1

declare dso_local i32 @_re1_5_classmatch(i8*, i8*) #1

declare dso_local i32 @_re1_5_namedclassmatch(i8*, i8*) #1

declare dso_local i32 @re1_5_fatal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
