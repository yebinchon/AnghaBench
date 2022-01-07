; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_dl.c_grub_dl_resolve_symbols.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_dl.c_grub_dl_resolve_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_obj_header = type { i32, i32, i32 }
%struct.grub_obj_symbol = type { i64, i32, i32 }
%struct.grub_obj_reloc_extern = type { i64, i32, i32, i64, i32, i32 }

@GRUB_OBJ_SEGMENT_END = common dso_local global i64 0, align 8
@grub_errno = common dso_local global i32 0, align 4
@GRUB_ERR_BAD_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"symbol not found: `%s'\00", align 1
@GRUB_OBJ_REL_FLAG_REL = common dso_local global i32 0, align 4
@GRUB_OBJ_REL_TYPE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unknown reloc type %d\00", align 1
@GRUB_ERR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.grub_obj_header*)* @grub_dl_resolve_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_dl_resolve_symbols(i32 %0, %struct.grub_obj_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.grub_obj_header*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.grub_obj_symbol*, align 8
  %8 = alloca %struct.grub_obj_reloc_extern*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.grub_obj_header* %1, %struct.grub_obj_header** %5, align 8
  %15 = load %struct.grub_obj_header*, %struct.grub_obj_header** %5, align 8
  %16 = bitcast %struct.grub_obj_header* %15 to i8*
  %17 = load %struct.grub_obj_header*, %struct.grub_obj_header** %5, align 8
  %18 = getelementptr inbounds %struct.grub_obj_header, %struct.grub_obj_header* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  store i8* %21, i8** %6, align 8
  %22 = load %struct.grub_obj_header*, %struct.grub_obj_header** %5, align 8
  %23 = bitcast %struct.grub_obj_header* %22 to i8*
  %24 = load %struct.grub_obj_header*, %struct.grub_obj_header** %5, align 8
  %25 = getelementptr inbounds %struct.grub_obj_header, %struct.grub_obj_header* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  %29 = bitcast i8* %28 to %struct.grub_obj_symbol*
  store %struct.grub_obj_symbol* %29, %struct.grub_obj_symbol** %7, align 8
  br label %30

30:                                               ; preds = %61, %2
  %31 = load %struct.grub_obj_symbol*, %struct.grub_obj_symbol** %7, align 8
  %32 = getelementptr inbounds %struct.grub_obj_symbol, %struct.grub_obj_symbol* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @GRUB_OBJ_SEGMENT_END, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.grub_obj_symbol*, %struct.grub_obj_symbol** %7, align 8
  %39 = getelementptr inbounds %struct.grub_obj_symbol, %struct.grub_obj_symbol* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i8* @grub_dl_get_section_addr(i32 %37, i64 %40)
  store i8* %41, i8** %9, align 8
  %42 = load %struct.grub_obj_symbol*, %struct.grub_obj_symbol** %7, align 8
  %43 = getelementptr inbounds %struct.grub_obj_symbol, %struct.grub_obj_symbol* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.grub_obj_symbol*, %struct.grub_obj_symbol** %7, align 8
  %50 = getelementptr inbounds %struct.grub_obj_symbol, %struct.grub_obj_symbol* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %48, i64 %52
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @grub_dl_register_symbol(i8* %53, i8* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %36
  %59 = load i32, i32* @grub_errno, align 4
  store i32 %59, i32* %3, align 4
  br label %160

60:                                               ; preds = %36
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.grub_obj_symbol*, %struct.grub_obj_symbol** %7, align 8
  %63 = getelementptr inbounds %struct.grub_obj_symbol, %struct.grub_obj_symbol* %62, i32 1
  store %struct.grub_obj_symbol* %63, %struct.grub_obj_symbol** %7, align 8
  br label %30

64:                                               ; preds = %30
  %65 = load %struct.grub_obj_header*, %struct.grub_obj_header** %5, align 8
  %66 = bitcast %struct.grub_obj_header* %65 to i8*
  %67 = load %struct.grub_obj_header*, %struct.grub_obj_header** %5, align 8
  %68 = getelementptr inbounds %struct.grub_obj_header, %struct.grub_obj_header* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %66, i64 %70
  %72 = bitcast i8* %71 to %struct.grub_obj_reloc_extern*
  store %struct.grub_obj_reloc_extern* %72, %struct.grub_obj_reloc_extern** %8, align 8
  br label %73

73:                                               ; preds = %157, %64
  %74 = load %struct.grub_obj_reloc_extern*, %struct.grub_obj_reloc_extern** %8, align 8
  %75 = getelementptr inbounds %struct.grub_obj_reloc_extern, %struct.grub_obj_reloc_extern* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @GRUB_OBJ_SEGMENT_END, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %158

79:                                               ; preds = %73
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.grub_obj_reloc_extern*, %struct.grub_obj_reloc_extern** %8, align 8
  %82 = getelementptr inbounds %struct.grub_obj_reloc_extern, %struct.grub_obj_reloc_extern* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i8* @grub_dl_get_section_addr(i32 %80, i64 %83)
  store i8* %84, i8** %10, align 8
  %85 = load %struct.grub_obj_reloc_extern*, %struct.grub_obj_reloc_extern** %8, align 8
  %86 = getelementptr inbounds %struct.grub_obj_reloc_extern, %struct.grub_obj_reloc_extern* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %10, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %10, align 8
  %91 = load %struct.grub_obj_reloc_extern*, %struct.grub_obj_reloc_extern** %8, align 8
  %92 = getelementptr inbounds %struct.grub_obj_reloc_extern, %struct.grub_obj_reloc_extern* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %13, align 4
  %94 = load i8*, i8** %10, align 8
  %95 = bitcast i8* %94 to i32*
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %12, align 4
  %97 = load %struct.grub_obj_reloc_extern*, %struct.grub_obj_reloc_extern** %8, align 8
  %98 = getelementptr inbounds %struct.grub_obj_reloc_extern, %struct.grub_obj_reloc_extern* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @GRUB_OBJ_SEGMENT_END, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %79
  %103 = load i8*, i8** %6, align 8
  %104 = load %struct.grub_obj_reloc_extern*, %struct.grub_obj_reloc_extern** %8, align 8
  %105 = getelementptr inbounds %struct.grub_obj_reloc_extern, %struct.grub_obj_reloc_extern* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  store i8* %108, i8** %14, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = call i8* @grub_dl_resolve_symbol(i8* %109)
  store i8* %110, i8** %11, align 8
  %111 = load i8*, i8** %11, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %102
  %114 = load i32, i32* @GRUB_ERR_BAD_MODULE, align 4
  %115 = load i8*, i8** %14, align 8
  %116 = call i32 (i32, i8*, ...) @grub_error(i32 %114, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %115)
  store i32 %116, i32* %3, align 4
  br label %160

117:                                              ; preds = %102
  %118 = load %struct.grub_obj_reloc_extern*, %struct.grub_obj_reloc_extern** %8, align 8
  %119 = getelementptr inbounds %struct.grub_obj_reloc_extern, %struct.grub_obj_reloc_extern* %118, i32 1
  store %struct.grub_obj_reloc_extern* %119, %struct.grub_obj_reloc_extern** %8, align 8
  br label %130

120:                                              ; preds = %79
  %121 = load i32, i32* %4, align 4
  %122 = load %struct.grub_obj_reloc_extern*, %struct.grub_obj_reloc_extern** %8, align 8
  %123 = getelementptr inbounds %struct.grub_obj_reloc_extern, %struct.grub_obj_reloc_extern* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = call i8* @grub_dl_get_section_addr(i32 %121, i64 %124)
  store i8* %125, i8** %11, align 8
  %126 = load %struct.grub_obj_reloc_extern*, %struct.grub_obj_reloc_extern** %8, align 8
  %127 = bitcast %struct.grub_obj_reloc_extern* %126 to i8*
  %128 = getelementptr inbounds i8, i8* %127, i64 4
  %129 = bitcast i8* %128 to %struct.grub_obj_reloc_extern*
  store %struct.grub_obj_reloc_extern* %129, %struct.grub_obj_reloc_extern** %8, align 8
  br label %130

130:                                              ; preds = %120, %117
  %131 = load i8*, i8** %11, align 8
  %132 = ptrtoint i8* %131 to i32
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @GRUB_OBJ_REL_FLAG_REL, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %130
  %140 = load i8*, i8** %10, align 8
  %141 = ptrtoint i8* %140 to i32
  %142 = load i32, i32* %12, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* %12, align 4
  br label %144

144:                                              ; preds = %139, %130
  %145 = load i32, i32* @GRUB_OBJ_REL_TYPE_MASK, align 4
  %146 = load i32, i32* %13, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  switch i32 %148, label %153 [
    i32 133, label %149
  ]

149:                                              ; preds = %144
  %150 = load i32, i32* %12, align 4
  %151 = load i8*, i8** %10, align 8
  %152 = bitcast i8* %151 to i32*
  store i32 %150, i32* %152, align 4
  br label %157

153:                                              ; preds = %144
  %154 = load i32, i32* @GRUB_ERR_BAD_MODULE, align 4
  %155 = load i32, i32* %13, align 4
  %156 = call i32 (i32, i8*, ...) @grub_error(i32 %154, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  store i32 %156, i32* %3, align 4
  br label %160

157:                                              ; preds = %149
  br label %73

158:                                              ; preds = %73
  %159 = load i32, i32* @GRUB_ERR_NONE, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %158, %153, %113, %58
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i8* @grub_dl_get_section_addr(i32, i64) #1

declare dso_local i64 @grub_dl_register_symbol(i8*, i8*, i32) #1

declare dso_local i8* @grub_dl_resolve_symbol(i8*) #1

declare dso_local i32 @grub_error(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
