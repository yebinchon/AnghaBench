; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_var.c_is_used_like_arg.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_var.c_is_used_like_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__**, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }

@R_ANAL_OP_TYPE_ADD = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_SUB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, %struct.TYPE_11__*, %struct.TYPE_12__*)* @is_used_like_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_used_like_arg(i8* %0, i8* %1, i8* %2, %struct.TYPE_11__* %3, %struct.TYPE_12__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %11, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %12, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %19, i64 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %13, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %116 [
    i32 129, label %25
    i32 130, label %26
    i32 133, label %53
    i32 132, label %73
    i32 131, label %73
    i32 128, label %93
  ]

25:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %184

26:                                               ; preds = %5
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %30 = call i32 @is_reg_in_src(i8* %27, %struct.TYPE_12__* %28, %struct.TYPE_11__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %26
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @strcmp(i8* %39, i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %43, %38, %35, %32
  %49 = phi i1 [ false, %38 ], [ false, %35 ], [ false, %32 ], [ %47, %43 ]
  br label %50

50:                                               ; preds = %48, %26
  %51 = phi i1 [ true, %26 ], [ %49, %48 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %6, align 4
  br label %184

53:                                               ; preds = %5
  %54 = load i8*, i8** %9, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i8*, i8** %9, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @strcmp(i8* %60, i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %184

65:                                               ; preds = %59, %56, %53
  %66 = load i8*, i8** %7, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %69 = call i32 @is_reg_in_src(i8* %66, %struct.TYPE_12__* %67, %struct.TYPE_11__* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 1, i32* %6, align 4
  br label %184

72:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %184

73:                                               ; preds = %5, %5
  %74 = load i8*, i8** %7, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %77 = call i32 @is_reg_in_src(i8* %74, %struct.TYPE_12__* %75, %struct.TYPE_11__* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 1, i32* %6, align 4
  br label %184

80:                                               ; preds = %73
  %81 = load i8*, i8** %9, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i8*, i8** %7, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i8*, i8** %9, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @strcmp(i8* %87, i8* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  store i32 0, i32* %6, align 4
  br label %184

92:                                               ; preds = %86, %83, %80
  store i32 0, i32* %6, align 4
  br label %184

93:                                               ; preds = %5
  %94 = load i8*, i8** %8, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %115

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = load i8*, i8** %8, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @strcmp(i8* %100, i8* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %104
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  store i32 0, i32* %6, align 4
  br label %184

115:                                              ; preds = %109, %104, %99, %96, %93
  br label %116

116:                                              ; preds = %5, %115
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @R_ANAL_OP_TYPE_ADD, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @R_ANAL_OP_TYPE_SUB, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %164

128:                                              ; preds = %122, %116
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %164

135:                                              ; preds = %128
  br i1 true, label %136, label %164

136:                                              ; preds = %135
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @strcmp(i8* %141, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %164, label %144

144:                                              ; preds = %136
  %145 = load i8*, i8** %9, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %156

147:                                              ; preds = %144
  %148 = load i8*, i8** %7, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load i8*, i8** %9, align 8
  %152 = load i8*, i8** %7, align 8
  %153 = call i32 @strcmp(i8* %151, i8* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %150
  store i32 0, i32* %6, align 4
  br label %184

156:                                              ; preds = %150, %147, %144
  %157 = load i8*, i8** %7, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %160 = call i32 @is_reg_in_src(i8* %157, %struct.TYPE_12__* %158, %struct.TYPE_11__* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  store i32 1, i32* %6, align 4
  br label %184

163:                                              ; preds = %156
  br label %164

164:                                              ; preds = %163, %136, %135, %128, %122
  %165 = load i8*, i8** %9, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %175

167:                                              ; preds = %164
  %168 = load i8*, i8** %7, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = load i8*, i8** %9, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = call i32 @strcmp(i8* %171, i8* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170, %167, %164
  %176 = load i8*, i8** %7, align 8
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %179 = call i32 @is_reg_in_src(i8* %176, %struct.TYPE_12__* %177, %struct.TYPE_11__* %178)
  %180 = icmp ne i32 %179, 0
  br label %181

181:                                              ; preds = %175, %170
  %182 = phi i1 [ true, %170 ], [ %180, %175 ]
  %183 = zext i1 %182 to i32
  store i32 %183, i32* %6, align 4
  br label %184

184:                                              ; preds = %181, %162, %155, %114, %92, %91, %79, %72, %71, %64, %50, %25
  %185 = load i32, i32* %6, align 4
  ret i32 %185
}

declare dso_local i32 @is_reg_in_src(i8*, %struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
