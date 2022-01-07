; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis.c_do_misc_decoding.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis.c_do_misc_decoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@FLD_SVE_Pn = common dso_local global i32 0, align 4
@FLD_SVE_Pm = common dso_local global i32 0, align 4
@FLD_SVE_Pg4_10 = common dso_local global i32 0, align 4
@FLD_SVE_Zd = common dso_local global i32 0, align 4
@FLD_SVE_Zm_16 = common dso_local global i32 0, align 4
@FLD_SVE_tszh = common dso_local global i32 0, align 4
@FLD_imm5 = common dso_local global i32 0, align 4
@FLD_SVE_Zn = common dso_local global i32 0, align 4
@FLD_SVE_Pd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @do_misc_decoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_misc_decoding(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %149 [
    i32 144, label %10
    i32 141, label %13
    i32 140, label %13
    i32 143, label %13
    i32 142, label %13
    i32 139, label %16
    i32 134, label %19
    i32 137, label %19
    i32 133, label %43
    i32 132, label %56
    i32 131, label %78
    i32 130, label %91
    i32 138, label %110
    i32 136, label %123
    i32 135, label %123
    i32 129, label %136
    i32 128, label %136
  ]

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = call i32 @decode_fcvt(%struct.TYPE_8__* %11)
  store i32 %12, i32* %2, align 4
  br label %150

13:                                               ; preds = %1, %1, %1, %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = call i32 @decode_asimd_fcvt(%struct.TYPE_8__* %14)
  store i32 %15, i32* %2, align 4
  br label %150

16:                                               ; preds = %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = call i32 @decode_asisd_fcvtxn(%struct.TYPE_8__* %17)
  store i32 %18, i32* %2, align 4
  br label %150

19:                                               ; preds = %1, %1
  %20 = load i32, i32* @FLD_SVE_Pn, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @extract_field(i32 %20, i32 %23, i32 0)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @FLD_SVE_Pm, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @extract_field(i32 %26, i32 %29, i32 0)
  %31 = icmp eq i32 %25, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %19
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @FLD_SVE_Pg4_10, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @extract_field(i32 %34, i32 %37, i32 0)
  %39 = icmp eq i32 %33, %38
  br label %40

40:                                               ; preds = %32, %19
  %41 = phi i1 [ false, %19 ], [ %39, %32 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %2, align 4
  br label %150

43:                                               ; preds = %1
  %44 = load i32, i32* @FLD_SVE_Zd, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @extract_field(i32 %44, i32 %47, i32 0)
  %49 = load i32, i32* @FLD_SVE_Zm_16, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @extract_field(i32 %49, i32 %52, i32 0)
  %54 = icmp eq i32 %48, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %2, align 4
  br label %150

56:                                               ; preds = %1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @FLD_SVE_tszh, align 4
  %61 = load i32, i32* @FLD_imm5, align 4
  %62 = call i32 @extract_fields(i32 %59, i32 0, i32 2, i32 %60, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ugt i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %56
  %66 = load i32, i32* %4, align 4
  %67 = icmp ule i32 %66, 16
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = sub i32 0, %71
  %73 = and i32 %70, %72
  %74 = icmp eq i32 %69, %73
  br label %75

75:                                               ; preds = %68, %65, %56
  %76 = phi i1 [ false, %65 ], [ false, %56 ], [ %74, %68 ]
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %2, align 4
  br label %150

78:                                               ; preds = %1
  %79 = load i32, i32* @FLD_SVE_Zn, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @extract_field(i32 %79, i32 %82, i32 0)
  %84 = load i32, i32* @FLD_SVE_Zm_16, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @extract_field(i32 %84, i32 %87, i32 0)
  %89 = icmp eq i32 %83, %88
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %2, align 4
  br label %150

91:                                               ; preds = %1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @FLD_SVE_tszh, align 4
  %96 = load i32, i32* @FLD_imm5, align 4
  %97 = call i32 @extract_fields(i32 %94, i32 0, i32 2, i32 %95, i32 %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ugt i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %91
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = sub i32 0, %103
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %101, %105
  br label %107

107:                                              ; preds = %100, %91
  %108 = phi i1 [ false, %91 ], [ %106, %100 ]
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %2, align 4
  br label %150

110:                                              ; preds = %1
  %111 = load i32, i32* @FLD_SVE_Pd, align 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @extract_field(i32 %111, i32 %114, i32 0)
  %116 = load i32, i32* @FLD_SVE_Pm, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @extract_field(i32 %116, i32 %119, i32 0)
  %121 = icmp eq i32 %115, %120
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %2, align 4
  br label %150

123:                                              ; preds = %1, %1
  %124 = load i32, i32* @FLD_SVE_Pn, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @extract_field(i32 %124, i32 %127, i32 0)
  %129 = load i32, i32* @FLD_SVE_Pm, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @extract_field(i32 %129, i32 %132, i32 0)
  %134 = icmp eq i32 %128, %133
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %2, align 4
  br label %150

136:                                              ; preds = %1, %1
  %137 = load i32, i32* @FLD_SVE_Pm, align 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @extract_field(i32 %137, i32 %140, i32 0)
  %142 = load i32, i32* @FLD_SVE_Pg4_10, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @extract_field(i32 %142, i32 %145, i32 0)
  %147 = icmp eq i32 %141, %146
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %2, align 4
  br label %150

149:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %149, %136, %123, %110, %107, %78, %75, %43, %40, %16, %13, %10
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @decode_fcvt(%struct.TYPE_8__*) #1

declare dso_local i32 @decode_asimd_fcvt(%struct.TYPE_8__*) #1

declare dso_local i32 @decode_asisd_fcvtxn(%struct.TYPE_8__*) #1

declare dso_local i32 @extract_field(i32, i32, i32) #1

declare dso_local i32 @extract_fields(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
