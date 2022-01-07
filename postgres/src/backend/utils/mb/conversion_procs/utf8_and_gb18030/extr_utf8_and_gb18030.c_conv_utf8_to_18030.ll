; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/utf8_and_gb18030/extr_utf8_and_gb18030.c_conv_utf8_to_18030.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/utf8_and_gb18030/extr_utf8_and_gb18030.c_conv_utf8_to_18030.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @conv_utf8_to_18030 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conv_utf8_to_18030(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @utf8word_to_unicode(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 1106
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 8207
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %13, 1106
  %15 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2127506640)
  %16 = add nsw i32 %14, %15
  %17 = call i32 (i32, ...) bitcast (i32 (...)* @gb_unlinear to i32 (i32, ...)*)(i32 %16)
  store i32 %17, i32* %2, align 4
  br label %163

18:                                               ; preds = %9, %1
  %19 = load i32, i32* %4, align 4
  %20 = icmp sge i32 %19, 9795
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp sle i32 %22, 11904
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %25, 9795
  %27 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2127058887)
  %28 = add nsw i32 %26, %27
  %29 = call i32 (i32, ...) bitcast (i32 (...)* @gb_unlinear to i32 (i32, ...)*)(i32 %28)
  store i32 %29, i32* %2, align 4
  br label %163

30:                                               ; preds = %21, %18
  %31 = load i32, i32* %4, align 4
  %32 = icmp sge i32 %31, 13851
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = icmp sle i32 %34, 14615
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 %37, 13851
  %39 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2110740941)
  %40 = add nsw i32 %38, %39
  %41 = call i32 (i32, ...) bitcast (i32 (...)* @gb_unlinear to i32 (i32, ...)*)(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %163

42:                                               ; preds = %33, %30
  %43 = load i32, i32* %4, align 4
  %44 = icmp sge i32 %43, 15585
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = icmp sle i32 %46, 16469
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 %49, 15585
  %51 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2110663624)
  %52 = add nsw i32 %50, %51
  %53 = call i32 (i32, ...) bitcast (i32 (...)* @gb_unlinear to i32 (i32, ...)*)(i32 %52)
  store i32 %53, i32* %2, align 4
  br label %163

54:                                               ; preds = %45, %42
  %55 = load i32, i32* %4, align 4
  %56 = icmp sge i32 %55, 16736
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = icmp sle i32 %58, 17206
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* %4, align 4
  %62 = sub nsw i32 %61, 16736
  %63 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2110600905)
  %64 = add nsw i32 %62, %63
  %65 = call i32 (i32, ...) bitcast (i32 (...)* @gb_unlinear to i32 (i32, ...)*)(i32 %64)
  store i32 %65, i32* %2, align 4
  br label %163

66:                                               ; preds = %57, %54
  %67 = load i32, i32* %4, align 4
  %68 = icmp sge i32 %67, 17623
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32, i32* %4, align 4
  %71 = icmp sle i32 %70, 17995
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* %4, align 4
  %74 = sub nsw i32 %73, 17623
  %75 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2110545095)
  %76 = add nsw i32 %74, %75
  %77 = call i32 (i32, ...) bitcast (i32 (...)* @gb_unlinear to i32 (i32, ...)*)(i32 %76)
  store i32 %77, i32* %2, align 4
  br label %163

78:                                               ; preds = %69, %66
  %79 = load i32, i32* %4, align 4
  %80 = icmp sge i32 %79, 18318
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i32, i32* %4, align 4
  %83 = icmp sle i32 %82, 18758
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* %4, align 4
  %86 = sub nsw i32 %85, 18318
  %87 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2110527432)
  %88 = add nsw i32 %86, %87
  %89 = call i32 (i32, ...) bitcast (i32 (...)* @gb_unlinear to i32 (i32, ...)*)(i32 %88)
  store i32 %89, i32* %2, align 4
  br label %163

90:                                               ; preds = %81, %78
  %91 = load i32, i32* %4, align 4
  %92 = icmp sge i32 %91, 18872
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load i32, i32* %4, align 4
  %95 = icmp sle i32 %94, 19574
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i32, i32* %4, align 4
  %98 = sub nsw i32 %97, 18872
  %99 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2110480079)
  %100 = add nsw i32 %98, %99
  %101 = call i32 (i32, ...) bitcast (i32 (...)* @gb_unlinear to i32 (i32, ...)*)(i32 %100)
  store i32 %101, i32* %2, align 4
  br label %163

102:                                              ; preds = %93, %90
  %103 = load i32, i32* %4, align 4
  %104 = icmp sge i32 %103, 40870
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load i32, i32* %4, align 4
  %107 = icmp sle i32 %106, 55295
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i32, i32* %4, align 4
  %110 = sub nsw i32 %109, 40870
  %111 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2110419149)
  %112 = add nsw i32 %110, %111
  %113 = call i32 (i32, ...) bitcast (i32 (...)* @gb_unlinear to i32 (i32, ...)*)(i32 %112)
  store i32 %113, i32* %2, align 4
  br label %163

114:                                              ; preds = %105, %102
  %115 = load i32, i32* %4, align 4
  %116 = icmp sge i32 %115, 59493
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load i32, i32* %4, align 4
  %119 = icmp sle i32 %118, 63787
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load i32, i32* %4, align 4
  %122 = sub nsw i32 %121, 59493
  %123 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2093559760)
  %124 = add nsw i32 %122, %123
  %125 = call i32 (i32, ...) bitcast (i32 (...)* @gb_unlinear to i32 (i32, ...)*)(i32 %124)
  store i32 %125, i32* %2, align 4
  br label %163

126:                                              ; preds = %117, %114
  %127 = load i32, i32* %4, align 4
  %128 = icmp sge i32 %127, 64042
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load i32, i32* %4, align 4
  %131 = icmp sle i32 %130, 65071
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load i32, i32* %4, align 4
  %134 = sub nsw i32 %133, 64042
  %135 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2077189064)
  %136 = add nsw i32 %134, %135
  %137 = call i32 (i32, ...) bitcast (i32 (...)* @gb_unlinear to i32 (i32, ...)*)(i32 %136)
  store i32 %137, i32* %2, align 4
  br label %163

138:                                              ; preds = %129, %126
  %139 = load i32, i32* %4, align 4
  %140 = icmp sge i32 %139, 65510
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = load i32, i32* %4, align 4
  %143 = icmp sle i32 %142, 65535
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load i32, i32* %4, align 4
  %146 = sub nsw i32 %145, 65510
  %147 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2077121996)
  %148 = add nsw i32 %146, %147
  %149 = call i32 (i32, ...) bitcast (i32 (...)* @gb_unlinear to i32 (i32, ...)*)(i32 %148)
  store i32 %149, i32* %2, align 4
  br label %163

150:                                              ; preds = %141, %138
  %151 = load i32, i32* %4, align 4
  %152 = icmp sge i32 %151, 65536
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  %154 = load i32, i32* %4, align 4
  %155 = icmp sle i32 %154, 1114111
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load i32, i32* %4, align 4
  %158 = sub nsw i32 %157, 65536
  %159 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -1875869392)
  %160 = add nsw i32 %158, %159
  %161 = call i32 (i32, ...) bitcast (i32 (...)* @gb_unlinear to i32 (i32, ...)*)(i32 %160)
  store i32 %161, i32* %2, align 4
  br label %163

162:                                              ; preds = %153, %150
  store i32 0, i32* %2, align 4
  br label %163

163:                                              ; preds = %162, %156, %144, %132, %120, %108, %96, %84, %72, %60, %48, %36, %24, %12
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @utf8word_to_unicode(i32) #1

declare dso_local i32 @gb_unlinear(...) #1

declare dso_local i32 @gb_linear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
