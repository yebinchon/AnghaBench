; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_farsi.c_conv_to_pvim.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_farsi.c_conv_to_pvim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@curbuf = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"%s/\82\99/\9A/g\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s/\81\99/\F8\DC/g\00", align 1
@CLEAR = common dso_local global i32 0, align 4
@farsi_text_1 = common dso_local global i32 0, align 4
@HLF_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @conv_to_pvim() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  br label %5

5:                                                ; preds = %143, %0
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curbuf, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sle i32 %6, %10
  br i1 %11, label %12, label %146

12:                                               ; preds = %5
  %13 = load i32, i32* %2, align 4
  %14 = call i32* @ml_get(i32 %13)
  store i32* %14, i32** %1, align 8
  %15 = load i32*, i32** %1, align 8
  %16 = call i64 @STRLEN(i32* %15)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %139, %12
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %142

23:                                               ; preds = %18
  %24 = load i32*, i32** %1, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @canF_Ljoin(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %127

31:                                               ; preds = %23
  %32 = load i32*, i32** %1, align 8
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @canF_Rjoin(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %127

40:                                               ; preds = %31
  %41 = load i32*, i32** %1, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @toF_leading(i32 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %94, %40
  %54 = load i32*, i32** %1, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @canF_Rjoin(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp slt i32 %62, %63
  br label %65

65:                                               ; preds = %61, %53
  %66 = phi i1 [ false, %53 ], [ %64, %61 ]
  br i1 %66, label %67, label %97

67:                                               ; preds = %65
  %68 = load i32*, i32** %1, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @toF_Rjoin(i32 %72)
  %74 = load i32*, i32** %1, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  %78 = load i32*, i32** %1, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @F_isterm(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %67
  %86 = load i32*, i32** %1, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @F_isalpha(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %85, %67
  br label %97

94:                                               ; preds = %85
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %53

97:                                               ; preds = %93, %65
  %98 = load i32*, i32** %1, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @F_isalpha(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %97
  %106 = load i32*, i32** %1, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @canF_Rjoin(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %126, label %113

113:                                              ; preds = %105, %97
  %114 = load i32*, i32** %1, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @toF_ending(i32 %119)
  %121 = load i32*, i32** %1, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  store i32 %120, i32* %125, align 4
  br label %126

126:                                              ; preds = %113, %105
  br label %138

127:                                              ; preds = %31, %23
  %128 = load i32*, i32** %1, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @toF_TyA(i32 %132)
  %134 = load i32*, i32** %1, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %133, i32* %137, align 4
  br label %138

138:                                              ; preds = %127, %126
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %4, align 4
  br label %18

142:                                              ; preds = %18
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %2, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %2, align 4
  br label %5

146:                                              ; preds = %5
  %147 = call i32 @do_cmdline_cmd(i32* bitcast ([10 x i8]* @.str to i32*))
  %148 = call i32 @do_cmdline_cmd(i32* bitcast ([11 x i8]* @.str.1 to i32*))
  %149 = load i32, i32* @CLEAR, align 4
  %150 = call i32 @redraw_later(i32 %149)
  %151 = load i32, i32* @farsi_text_1, align 4
  %152 = load i32, i32* @HLF_S, align 4
  %153 = call i32 @hl_attr(i32 %152)
  %154 = call i32 @MSG_ATTR(i32 %151, i32 %153)
  ret void
}

declare dso_local i32* @ml_get(i32) #1

declare dso_local i64 @STRLEN(i32*) #1

declare dso_local i64 @canF_Ljoin(i32) #1

declare dso_local i64 @canF_Rjoin(i32) #1

declare dso_local i32 @toF_leading(i32) #1

declare dso_local i32 @toF_Rjoin(i32) #1

declare dso_local i64 @F_isterm(i32) #1

declare dso_local i32 @F_isalpha(i32) #1

declare dso_local i32 @toF_ending(i32) #1

declare dso_local i32 @toF_TyA(i32) #1

declare dso_local i32 @do_cmdline_cmd(i32*) #1

declare dso_local i32 @redraw_later(i32) #1

declare dso_local i32 @MSG_ATTR(i32, i32) #1

declare dso_local i32 @hl_attr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
