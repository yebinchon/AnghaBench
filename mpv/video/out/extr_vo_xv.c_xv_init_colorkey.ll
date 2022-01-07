; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_xv_init_colorkey.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_xv_init_colorkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.TYPE_3__*, %struct.xvctx* }
%struct.TYPE_3__ = type { i32* }
%struct.xvctx = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"XV_COLORKEY\00", align 1
@None = common dso_local global i64 0, align 8
@CK_METHOD_NONE = common dso_local global i64 0, align 8
@CK_SRC_CUR = common dso_local global i64 0, align 8
@Success = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"Couldn't get colorkey! Maybe the selected Xv port has no overlay.\0A\00", align 1
@CK_SRC_SET = common dso_local global i64 0, align 8
@False = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Couldn't set colorkey!\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"XV_AUTOPAINT_COLORKEY\00", align 1
@CK_METHOD_AUTOPAINT = common dso_local global i64 0, align 8
@CK_METHOD_MANUALFILL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*)* @xv_init_colorkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xv_init_colorkey(%struct.vo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.xvctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  %9 = load %struct.vo*, %struct.vo** %3, align 8
  %10 = getelementptr inbounds %struct.vo, %struct.vo* %9, i32 0, i32 1
  %11 = load %struct.xvctx*, %struct.xvctx** %10, align 8
  store %struct.xvctx* %11, %struct.xvctx** %4, align 8
  %12 = load %struct.vo*, %struct.vo** %3, align 8
  %13 = getelementptr inbounds %struct.vo, %struct.vo* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %5, align 8
  %17 = load %struct.vo*, %struct.vo** %3, align 8
  %18 = call i64 @xv_intern_atom_if_exists(%struct.vo* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @None, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %134

22:                                               ; preds = %1
  %23 = load %struct.xvctx*, %struct.xvctx** %4, align 8
  %24 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CK_METHOD_NONE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %134

29:                                               ; preds = %22
  %30 = load %struct.xvctx*, %struct.xvctx** %4, align 8
  %31 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CK_SRC_CUR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %29
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.xvctx*, %struct.xvctx** %4, align 8
  %39 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @XvGetPortAttribute(i32* %37, i32 %40, i64 %41, i32* %8)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @Success, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.xvctx*, %struct.xvctx** %4, align 8
  %49 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %53

50:                                               ; preds = %36
  %51 = load %struct.vo*, %struct.vo** %3, align 8
  %52 = call i32 @MP_FATAL(%struct.vo* %51, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %144

53:                                               ; preds = %46
  br label %87

54:                                               ; preds = %29
  %55 = load %struct.xvctx*, %struct.xvctx** %4, align 8
  %56 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.xvctx*, %struct.xvctx** %4, align 8
  %59 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.xvctx*, %struct.xvctx** %4, align 8
  %61 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CK_SRC_SET, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %54
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* @False, align 4
  %69 = call i64 @XInternAtom(i32* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %68)
  store i64 %69, i64* %6, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.xvctx*, %struct.xvctx** %4, align 8
  %72 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.xvctx*, %struct.xvctx** %4, align 8
  %76 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @XvSetPortAttribute(i32* %70, i32 %73, i64 %74, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @Success, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %66
  %83 = load %struct.vo*, %struct.vo** %3, align 8
  %84 = call i32 @MP_FATAL(%struct.vo* %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %144

85:                                               ; preds = %66
  br label %86

86:                                               ; preds = %85, %54
  br label %87

87:                                               ; preds = %86, %53
  %88 = load %struct.vo*, %struct.vo** %3, align 8
  %89 = call i64 @xv_intern_atom_if_exists(%struct.vo* %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i64 %89, i64* %6, align 8
  %90 = load %struct.xvctx*, %struct.xvctx** %4, align 8
  %91 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @CK_METHOD_AUTOPAINT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %121

96:                                               ; preds = %87
  %97 = load i32, i32* @Success, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %7, align 4
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* @None, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %96
  %105 = load i32*, i32** %5, align 8
  %106 = load %struct.xvctx*, %struct.xvctx** %4, align 8
  %107 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* %6, align 8
  %110 = call i32 @XvSetPortAttribute(i32* %105, i32 %108, i64 %109, i32 1)
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %104, %96
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @Success, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load i64, i64* @CK_METHOD_MANUALFILL, align 8
  %117 = load %struct.xvctx*, %struct.xvctx** %4, align 8
  %118 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i64 %116, i64* %119, align 8
  br label %120

120:                                              ; preds = %115, %111
  br label %133

121:                                              ; preds = %87
  %122 = load i64, i64* %6, align 8
  %123 = load i64, i64* @None, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = load i32*, i32** %5, align 8
  %127 = load %struct.xvctx*, %struct.xvctx** %4, align 8
  %128 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load i64, i64* %6, align 8
  %131 = call i32 @XvSetPortAttribute(i32* %126, i32 %129, i64 %130, i32 0)
  br label %132

132:                                              ; preds = %125, %121
  br label %133

133:                                              ; preds = %132, %120
  br label %141

134:                                              ; preds = %22, %1
  %135 = load i64, i64* @CK_METHOD_NONE, align 8
  %136 = load %struct.xvctx*, %struct.xvctx** %4, align 8
  %137 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i64 %135, i64* %138, align 8
  %139 = load %struct.xvctx*, %struct.xvctx** %4, align 8
  %140 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %139, i32 0, i32 1
  store i32 -16777216, i32* %140, align 4
  br label %141

141:                                              ; preds = %134, %133
  %142 = load %struct.vo*, %struct.vo** %3, align 8
  %143 = call i32 @xv_print_ck_info(%struct.vo* %142)
  store i32 1, i32* %2, align 4
  br label %144

144:                                              ; preds = %141, %82, %50
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i64 @xv_intern_atom_if_exists(%struct.vo*, i8*) #1

declare dso_local i32 @XvGetPortAttribute(i32*, i32, i64, i32*) #1

declare dso_local i32 @MP_FATAL(%struct.vo*, i8*) #1

declare dso_local i64 @XInternAtom(i32*, i8*, i32) #1

declare dso_local i32 @XvSetPortAttribute(i32*, i32, i64, i32) #1

declare dso_local i32 @xv_print_ck_info(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
