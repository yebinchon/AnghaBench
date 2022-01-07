; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_zend_add_magic_methods.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_zend_add_magic_methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [10 x i8] c"serialize\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"unserialize\00", align 1
@ZEND_CLONE_FUNC_NAME = common dso_local global i8* null, align 8
@ZEND_CONSTRUCTOR_FUNC_NAME = common dso_local global i8* null, align 8
@ZEND_DESTRUCTOR_FUNC_NAME = common dso_local global i8* null, align 8
@ZEND_GET_FUNC_NAME = common dso_local global i8* null, align 8
@ZEND_ACC_USE_GUARDS = common dso_local global i32 0, align 4
@ZEND_SET_FUNC_NAME = common dso_local global i8* null, align 8
@ZEND_CALL_FUNC_NAME = common dso_local global i8* null, align 8
@ZEND_UNSET_FUNC_NAME = common dso_local global i8* null, align 8
@ZEND_ISSET_FUNC_NAME = common dso_local global i8* null, align 8
@ZEND_CALLSTATIC_FUNC_NAME = common dso_local global i8* null, align 8
@ZEND_TOSTRING_FUNC_NAME = common dso_local global i8* null, align 8
@ZEND_DEBUGINFO_FUNC_NAME = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32*)* @zend_add_magic_methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_add_magic_methods(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i64 @zend_string_equals_literal(i32* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 13
  store i32* %11, i32** %13, align 8
  br label %169

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @zend_string_equals_literal(i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 12
  store i32* %19, i32** %21, align 8
  br label %168

22:                                               ; preds = %14
  %23 = load i32*, i32** %5, align 8
  %24 = call i8* @ZSTR_VAL(i32* %23)
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 95
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load i32*, i32** %5, align 8
  %31 = call i8* @ZSTR_VAL(i32* %30)
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 95
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %22
  br label %167

37:                                               ; preds = %29
  %38 = load i32*, i32** %5, align 8
  %39 = load i8*, i8** @ZEND_CLONE_FUNC_NAME, align 8
  %40 = call i64 @zend_string_equals_literal(i32* %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 11
  store i32* %43, i32** %45, align 8
  br label %166

46:                                               ; preds = %37
  %47 = load i32*, i32** %5, align 8
  %48 = load i8*, i8** @ZEND_CONSTRUCTOR_FUNC_NAME, align 8
  %49 = call i64 @zend_string_equals_literal(i32* %47, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 10
  store i32* %52, i32** %54, align 8
  br label %165

55:                                               ; preds = %46
  %56 = load i32*, i32** %5, align 8
  %57 = load i8*, i8** @ZEND_DESTRUCTOR_FUNC_NAME, align 8
  %58 = call i64 @zend_string_equals_literal(i32* %56, i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 9
  store i32* %61, i32** %63, align 8
  br label %164

64:                                               ; preds = %55
  %65 = load i32*, i32** %5, align 8
  %66 = load i8*, i8** @ZEND_GET_FUNC_NAME, align 8
  %67 = call i64 @zend_string_equals_literal(i32* %65, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 8
  store i32* %70, i32** %72, align 8
  %73 = load i32, i32* @ZEND_ACC_USE_GUARDS, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %163

78:                                               ; preds = %64
  %79 = load i32*, i32** %5, align 8
  %80 = load i8*, i8** @ZEND_SET_FUNC_NAME, align 8
  %81 = call i64 @zend_string_equals_literal(i32* %79, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load i32*, i32** %6, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 7
  store i32* %84, i32** %86, align 8
  %87 = load i32, i32* @ZEND_ACC_USE_GUARDS, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %162

92:                                               ; preds = %78
  %93 = load i32*, i32** %5, align 8
  %94 = load i8*, i8** @ZEND_CALL_FUNC_NAME, align 8
  %95 = call i64 @zend_string_equals_literal(i32* %93, i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32*, i32** %6, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 6
  store i32* %98, i32** %100, align 8
  br label %161

101:                                              ; preds = %92
  %102 = load i32*, i32** %5, align 8
  %103 = load i8*, i8** @ZEND_UNSET_FUNC_NAME, align 8
  %104 = call i64 @zend_string_equals_literal(i32* %102, i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load i32*, i32** %6, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 5
  store i32* %107, i32** %109, align 8
  %110 = load i32, i32* @ZEND_ACC_USE_GUARDS, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %160

115:                                              ; preds = %101
  %116 = load i32*, i32** %5, align 8
  %117 = load i8*, i8** @ZEND_ISSET_FUNC_NAME, align 8
  %118 = call i64 @zend_string_equals_literal(i32* %116, i8* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %115
  %121 = load i32*, i32** %6, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 4
  store i32* %121, i32** %123, align 8
  %124 = load i32, i32* @ZEND_ACC_USE_GUARDS, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %159

129:                                              ; preds = %115
  %130 = load i32*, i32** %5, align 8
  %131 = load i8*, i8** @ZEND_CALLSTATIC_FUNC_NAME, align 8
  %132 = call i64 @zend_string_equals_literal(i32* %130, i8* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i32*, i32** %6, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  store i32* %135, i32** %137, align 8
  br label %158

138:                                              ; preds = %129
  %139 = load i32*, i32** %5, align 8
  %140 = load i8*, i8** @ZEND_TOSTRING_FUNC_NAME, align 8
  %141 = call i64 @zend_string_equals_literal(i32* %139, i8* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i32*, i32** %6, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  store i32* %144, i32** %146, align 8
  br label %157

147:                                              ; preds = %138
  %148 = load i32*, i32** %5, align 8
  %149 = load i8*, i8** @ZEND_DEBUGINFO_FUNC_NAME, align 8
  %150 = call i64 @zend_string_equals_literal(i32* %148, i8* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load i32*, i32** %6, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  store i32* %153, i32** %155, align 8
  br label %156

156:                                              ; preds = %152, %147
  br label %157

157:                                              ; preds = %156, %143
  br label %158

158:                                              ; preds = %157, %134
  br label %159

159:                                              ; preds = %158, %120
  br label %160

160:                                              ; preds = %159, %106
  br label %161

161:                                              ; preds = %160, %97
  br label %162

162:                                              ; preds = %161, %83
  br label %163

163:                                              ; preds = %162, %69
  br label %164

164:                                              ; preds = %163, %60
  br label %165

165:                                              ; preds = %164, %51
  br label %166

166:                                              ; preds = %165, %42
  br label %167

167:                                              ; preds = %166, %36
  br label %168

168:                                              ; preds = %167, %18
  br label %169

169:                                              ; preds = %168, %10
  ret void
}

declare dso_local i64 @zend_string_equals_literal(i32*, i8*) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
