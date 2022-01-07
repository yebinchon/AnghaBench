; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_get_cie.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_get_cie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.TYPE_7__ = type { i8*, i8*, i32 }
%struct.frame_info = type { i32, i64 }

@DW_CIE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unsupported yet 64-bit CIEs\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"wrong CIE pointer at %x from FDE %x\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.module*, i64, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.frame_info*, i64)* @dwarf2_get_cie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dwarf2_get_cie(i64 %0, %struct.module* %1, i64 %2, %struct.TYPE_7__* %3, %struct.TYPE_7__* %4, %struct.frame_info* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.module*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.frame_info*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store i64 %0, i64* %9, align 8
  store %struct.module* %1, %struct.module** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %13, align 8
  store %struct.frame_info* %5, %struct.frame_info** %14, align 8
  store i64 %6, i64* %15, align 8
  store i8* inttoptr (i64 -1 to i8*), i8** %18, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %24, align 8
  %28 = load i64, i64* %15, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %7
  br label %33

31:                                               ; preds = %7
  %32 = load i32, i32* @DW_CIE_ID, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i32 [ 0, %30 ], [ %32, %31 ]
  store i32 %34, i32* %23, align 4
  br label %35

35:                                               ; preds = %53, %33
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ult i8* %39, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %35
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %46 = call i32 @dwarf2_parse_u4(%struct.TYPE_7__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 -4
  store i8* %52, i8** %50, align 8
  br label %54

53:                                               ; preds = %44
  br label %35

54:                                               ; preds = %48, %35
  br label %55

55:                                               ; preds = %213, %54
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ult i8* %59, %62
  br i1 %63, label %64, label %217

64:                                               ; preds = %55
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %66 = call i32 @dwarf2_parse_u4(%struct.TYPE_7__* %65)
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %19, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %64
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %19, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8* %77, i8** %16, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %79 = call i32 @dwarf2_parse_u4(%struct.TYPE_7__* %78)
  store i32 %79, i32* %20, align 4
  %80 = load i32, i32* %20, align 4
  %81 = load i32, i32* %23, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %108

83:                                               ; preds = %71
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 -8
  store i8* %87, i8** %18, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %89 = load %struct.frame_info*, %struct.frame_info** %14, align 8
  %90 = call i32 @parse_cie_details(%struct.TYPE_7__* %88, %struct.frame_info* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %83
  %93 = load i64, i64* @FALSE, align 8
  store i64 %93, i64* %8, align 8
  br label %219

94:                                               ; preds = %83
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** %16, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  br label %213

108:                                              ; preds = %71
  %109 = load i64, i64* %15, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* %20, align 4
  %116 = zext i32 %115 to i64
  %117 = sub i64 0, %116
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  %119 = getelementptr inbounds i8, i8* %118, i64 -4
  br label %125

120:                                              ; preds = %108
  %121 = load i8*, i8** %24, align 8
  %122 = load i32, i32* %20, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  br label %125

125:                                              ; preds = %120, %111
  %126 = phi i8* [ %119, %111 ], [ %124, %120 ]
  store i8* %126, i8** %17, align 8
  %127 = load i8*, i8** %17, align 8
  %128 = load i8*, i8** %18, align 8
  %129 = icmp ne i8* %127, %128
  br i1 %129, label %130, label %181

130:                                              ; preds = %125
  %131 = load i8*, i8** %17, align 8
  store i8* %131, i8** %18, align 8
  %132 = load i8*, i8** %17, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load i8*, i8** %17, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  store i8* %141, i8** %143, align 8
  %144 = load i8*, i8** %17, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 4
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %147 = call i32 @dwarf2_parse_u4(%struct.TYPE_7__* %146)
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %153 = call i32 @dwarf2_parse_u4(%struct.TYPE_7__* %152)
  %154 = load i32, i32* %23, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %173

156:                                              ; preds = %130
  %157 = load i8*, i8** %17, align 8
  %158 = load i8*, i8** %24, align 8
  %159 = ptrtoint i8* %157 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = trunc i64 %161 to i32
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = load i8*, i8** %24, align 8
  %167 = ptrtoint i8* %165 to i64
  %168 = ptrtoint i8* %166 to i64
  %169 = sub i64 %167, %168
  %170 = trunc i64 %169 to i32
  %171 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %162, i32 %170)
  %172 = load i64, i64* @FALSE, align 8
  store i64 %172, i64* %8, align 8
  br label %219

173:                                              ; preds = %130
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %175 = load %struct.frame_info*, %struct.frame_info** %14, align 8
  %176 = call i32 @parse_cie_details(%struct.TYPE_7__* %174, %struct.frame_info* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %173
  %179 = load i64, i64* @FALSE, align 8
  store i64 %179, i64* %8, align 8
  br label %219

180:                                              ; preds = %173
  br label %181

181:                                              ; preds = %180, %125
  %182 = load i64, i64* %11, align 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %184 = load %struct.frame_info*, %struct.frame_info** %14, align 8
  %185 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i64 @dwarf2_parse_augmentation_ptr(%struct.TYPE_7__* %183, i32 %186)
  %188 = add i64 %182, %187
  store i64 %188, i64* %21, align 8
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %190 = load %struct.frame_info*, %struct.frame_info** %14, align 8
  %191 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = and i32 %192, 15
  %194 = call i64 @dwarf2_parse_augmentation_ptr(%struct.TYPE_7__* %189, i32 %193)
  store i64 %194, i64* %22, align 8
  %195 = load i64, i64* %9, align 8
  %196 = load i64, i64* %21, align 8
  %197 = icmp uge i64 %195, %196
  br i1 %197, label %198, label %212

198:                                              ; preds = %181
  %199 = load i64, i64* %9, align 8
  %200 = load i64, i64* %21, align 8
  %201 = load i64, i64* %22, align 8
  %202 = add i64 %200, %201
  %203 = icmp ult i64 %199, %202
  br i1 %203, label %204, label %212

204:                                              ; preds = %198
  %205 = load i8*, i8** %16, align 8
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  store i8* %205, i8** %207, align 8
  %208 = load i64, i64* %21, align 8
  %209 = load %struct.frame_info*, %struct.frame_info** %14, align 8
  %210 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %209, i32 0, i32 1
  store i64 %208, i64* %210, align 8
  %211 = load i64, i64* @TRUE, align 8
  store i64 %211, i64* %8, align 8
  br label %219

212:                                              ; preds = %198, %181
  br label %213

213:                                              ; preds = %212, %94
  %214 = load i8*, i8** %16, align 8
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  store i8* %214, i8** %216, align 8
  br label %55

217:                                              ; preds = %55
  %218 = load i64, i64* @FALSE, align 8
  store i64 %218, i64* %8, align 8
  br label %219

219:                                              ; preds = %217, %204, %178, %156, %92
  %220 = load i64, i64* %8, align 8
  ret i64 %220
}

declare dso_local i32 @dwarf2_parse_u4(%struct.TYPE_7__*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @parse_cie_details(%struct.TYPE_7__*, %struct.frame_info*) #1

declare dso_local i64 @dwarf2_parse_augmentation_ptr(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
