; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_tpi.c_parse_tpi_stypes.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_tpi.c_parse_tpi_stypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i16, i8* }

@SLF_FIELDLIST = common dso_local global i32 0, align 4
@lf_fieldlist = common dso_local global i32 0, align 4
@SLF_ENUM = common dso_local global i32 0, align 4
@lf_enum = common dso_local global i32 0, align 4
@SLF_CLASS = common dso_local global i32 0, align 4
@lf_class = common dso_local global i32 0, align 4
@SLF_STRUCTURE = common dso_local global i32 0, align 4
@lf_structure = common dso_local global i32 0, align 4
@SLF_ARRAY = common dso_local global i32 0, align 4
@lf_array = common dso_local global i32 0, align 4
@SLF_MODIFIER = common dso_local global i32 0, align 4
@lf_modifier = common dso_local global i32 0, align 4
@SLF_ARGLIST = common dso_local global i32 0, align 4
@lf_arglist = common dso_local global i32 0, align 4
@SLF_MFUNCTION = common dso_local global i32 0, align 4
@lf_mfunction = common dso_local global i32 0, align 4
@SLF_PROCEDURE = common dso_local global i32 0, align 4
@lf_procedure = common dso_local global i32 0, align 4
@SLF_UNION = common dso_local global i32 0, align 4
@lf_union = common dso_local global i32 0, align 4
@SLF_BITFIELD = common dso_local global i32 0, align 4
@lf_bitfield = common dso_local global i32 0, align 4
@SLF_VTSHAPE = common dso_local global i32 0, align 4
@lf_vtshape = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"parse_tpi_streams(): unsupported leaf type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*)* @parse_tpi_stypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_tpi_stypes(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = bitcast i32* %11 to i8*
  %13 = call i32 @stream_file_read(i32* %9, i32 2, i8* %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %127

19:                                               ; preds = %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @malloc(i32 %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %127

28:                                               ; preds = %19
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @stream_file_read(i32* %29, i32 %32, i8* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = bitcast i8* %35 to i16*
  %37 = load i16, i16* %36, align 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i16 %37, i16* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = add i32 %41, 2
  store i32 %42, i32* %7, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i16, i16* %45, align 8
  %47 = zext i16 %46 to i32
  switch i32 %47, label %121 [
    i32 136, label %48
    i32 137, label %52
    i32 138, label %56
    i32 130, label %60
    i32 132, label %64
    i32 140, label %88
    i32 133, label %92
    i32 141, label %96
    i32 134, label %100
    i32 135, label %104
    i32 131, label %105
    i32 129, label %109
    i32 139, label %113
    i32 128, label %117
  ]

48:                                               ; preds = %28
  %49 = load i32, i32* @SLF_FIELDLIST, align 4
  %50 = load i32, i32* @lf_fieldlist, align 4
  %51 = call i32 @PARSE_LF(i32 %49, i32 %50)
  br label %123

52:                                               ; preds = %28
  %53 = load i32, i32* @SLF_ENUM, align 4
  %54 = load i32, i32* @lf_enum, align 4
  %55 = call i32 @PARSE_LF(i32 %53, i32 %54)
  br label %123

56:                                               ; preds = %28
  %57 = load i32, i32* @SLF_CLASS, align 4
  %58 = load i32, i32* @lf_class, align 4
  %59 = call i32 @PARSE_LF(i32 %57, i32 %58)
  br label %123

60:                                               ; preds = %28
  %61 = load i32, i32* @SLF_STRUCTURE, align 4
  %62 = load i32, i32* @lf_structure, align 4
  %63 = call i32 @PARSE_LF(i32 %61, i32 %62)
  br label %123

64:                                               ; preds = %28
  %65 = call i64 @malloc(i32 4)
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %8, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @free(i8* %70)
  store i32 0, i32* %3, align 4
  br label %127

72:                                               ; preds = %64
  %73 = load i32*, i32** %8, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @parse_lf_pointer(i32* %73, i8* %75, i32* %7, i32 %78)
  %80 = load i32*, i32** %8, align 8
  %81 = bitcast i32* %80 to i8*
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  store i8* %81, i8** %84, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = call i32 @init_stype_info(%struct.TYPE_5__* %86)
  br label %123

88:                                               ; preds = %28
  %89 = load i32, i32* @SLF_ARRAY, align 4
  %90 = load i32, i32* @lf_array, align 4
  %91 = call i32 @PARSE_LF(i32 %89, i32 %90)
  br label %123

92:                                               ; preds = %28
  %93 = load i32, i32* @SLF_MODIFIER, align 4
  %94 = load i32, i32* @lf_modifier, align 4
  %95 = call i32 @PARSE_LF(i32 %93, i32 %94)
  br label %123

96:                                               ; preds = %28
  %97 = load i32, i32* @SLF_ARGLIST, align 4
  %98 = load i32, i32* @lf_arglist, align 4
  %99 = call i32 @PARSE_LF(i32 %97, i32 %98)
  br label %123

100:                                              ; preds = %28
  %101 = load i32, i32* @SLF_MFUNCTION, align 4
  %102 = load i32, i32* @lf_mfunction, align 4
  %103 = call i32 @PARSE_LF(i32 %101, i32 %102)
  br label %123

104:                                              ; preds = %28
  br label %123

105:                                              ; preds = %28
  %106 = load i32, i32* @SLF_PROCEDURE, align 4
  %107 = load i32, i32* @lf_procedure, align 4
  %108 = call i32 @PARSE_LF(i32 %106, i32 %107)
  br label %123

109:                                              ; preds = %28
  %110 = load i32, i32* @SLF_UNION, align 4
  %111 = load i32, i32* @lf_union, align 4
  %112 = call i32 @PARSE_LF(i32 %110, i32 %111)
  br label %123

113:                                              ; preds = %28
  %114 = load i32, i32* @SLF_BITFIELD, align 4
  %115 = load i32, i32* @lf_bitfield, align 4
  %116 = call i32 @PARSE_LF(i32 %114, i32 %115)
  br label %123

117:                                              ; preds = %28
  %118 = load i32, i32* @SLF_VTSHAPE, align 4
  %119 = load i32, i32* @lf_vtshape, align 4
  %120 = call i32 @PARSE_LF(i32 %118, i32 %119)
  br label %123

121:                                              ; preds = %28
  %122 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %117, %113, %109, %105, %104, %100, %96, %92, %88, %72, %60, %56, %52, %48
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @free(i8* %124)
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %123, %69, %27, %18
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @stream_file_read(i32*, i32, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @PARSE_LF(i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @parse_lf_pointer(i32*, i8*, i32*, i32) #1

declare dso_local i32 @init_stype_info(%struct.TYPE_5__*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
