; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_zend_array_element_type.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_zend_array_element_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAY_BE_OBJECT = common dso_local global i32 0, align 4
@MAY_BE_ANY = common dso_local global i32 0, align 4
@MAY_BE_RC1 = common dso_local global i32 0, align 4
@MAY_BE_RCN = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_KEY_ANY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_ANY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_REF = common dso_local global i32 0, align 4
@MAY_BE_REF = common dso_local global i32 0, align 4
@MAY_BE_ARRAY = common dso_local global i32 0, align 4
@MAY_BE_NULL = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_SHIFT = common dso_local global i32 0, align 4
@MAY_BE_STRING = common dso_local global i32 0, align 4
@MAY_BE_RESOURCE = common dso_local global i32 0, align 4
@MAY_BE_UNDEF = common dso_local global i32 0, align 4
@MAY_BE_FALSE = common dso_local global i32 0, align 4
@MAY_BE_TRUE = common dso_local global i32 0, align 4
@MAY_BE_LONG = common dso_local global i32 0, align 4
@MAY_BE_DOUBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zend_array_element_type(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MAY_BE_OBJECT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %46

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @MAY_BE_ANY, align 4
  %17 = load i32, i32* @MAY_BE_RC1, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MAY_BE_RCN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MAY_BE_ARRAY_KEY_ANY, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MAY_BE_ARRAY_OF_ANY, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MAY_BE_ARRAY_OF_REF, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %45

29:                                               ; preds = %12
  %30 = load i32, i32* @MAY_BE_ANY, align 4
  %31 = load i32, i32* @MAY_BE_REF, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @MAY_BE_RC1, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @MAY_BE_RCN, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @MAY_BE_ARRAY_KEY_ANY, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @MAY_BE_ARRAY_OF_ANY, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @MAY_BE_ARRAY_OF_REF, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %29, %15
  br label %46

46:                                               ; preds = %45, %3
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @MAY_BE_ARRAY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %123

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* @MAY_BE_NULL, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %122

58:                                               ; preds = %51
  %59 = load i32, i32* @MAY_BE_NULL, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @MAY_BE_ARRAY_OF_ANY, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @MAY_BE_ARRAY_SHIFT, align 4
  %64 = ashr i32 %62, %63
  %65 = or i32 %59, %64
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @MAY_BE_ARRAY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %58
  %73 = load i32, i32* @MAY_BE_ARRAY_KEY_ANY, align 4
  %74 = load i32, i32* @MAY_BE_ARRAY_OF_ANY, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @MAY_BE_ARRAY_OF_REF, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %72, %58
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @MAY_BE_ARRAY_OF_REF, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %80
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @MAY_BE_RC1, align 4
  %90 = load i32, i32* @MAY_BE_RCN, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  br label %102

94:                                               ; preds = %85
  %95 = load i32, i32* @MAY_BE_REF, align 4
  %96 = load i32, i32* @MAY_BE_RC1, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @MAY_BE_RCN, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %94, %88
  br label %121

103:                                              ; preds = %80
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @MAY_BE_STRING, align 4
  %106 = load i32, i32* @MAY_BE_ARRAY, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @MAY_BE_OBJECT, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @MAY_BE_RESOURCE, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %104, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %103
  %115 = load i32, i32* @MAY_BE_RC1, align 4
  %116 = load i32, i32* @MAY_BE_RCN, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* %7, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %114, %103
  br label %121

121:                                              ; preds = %120, %102
  br label %122

122:                                              ; preds = %121, %54
  br label %123

123:                                              ; preds = %122, %46
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @MAY_BE_STRING, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %123
  %129 = load i32, i32* @MAY_BE_STRING, align 4
  %130 = load i32, i32* @MAY_BE_RC1, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* %7, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %128
  %137 = load i32, i32* @MAY_BE_NULL, align 4
  %138 = load i32, i32* %7, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %136, %128
  br label %141

141:                                              ; preds = %140, %123
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @MAY_BE_UNDEF, align 4
  %144 = load i32, i32* @MAY_BE_NULL, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @MAY_BE_FALSE, align 4
  %147 = or i32 %145, %146
  %148 = and i32 %142, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %141
  %151 = load i32, i32* @MAY_BE_NULL, align 4
  %152 = load i32, i32* %7, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %150, %141
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @MAY_BE_TRUE, align 4
  %157 = load i32, i32* @MAY_BE_LONG, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @MAY_BE_DOUBLE, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @MAY_BE_RESOURCE, align 4
  %162 = or i32 %160, %161
  %163 = and i32 %155, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %154
  %166 = load i32, i32* %5, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %165
  %169 = load i32, i32* @MAY_BE_NULL, align 4
  %170 = load i32, i32* %7, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %7, align 4
  br label %172

172:                                              ; preds = %168, %165
  br label %173

173:                                              ; preds = %172, %154
  %174 = load i32, i32* %7, align 4
  ret i32 %174
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
