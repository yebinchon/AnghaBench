; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_lookup_symtab.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_lookup_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.module = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.hash_table = type { i32 }
%struct.symt = type { i32 }
%struct.symtab_elt = type { i32, %struct.TYPE_9__*, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8* }
%struct.hash_table_iter = type { i32 }
%struct.symt_compiland = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"Already found symbol %s (%s) in symtab %s @%08x and %s @%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Couldn't find symbol %s!%s in symtab\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.module*, %struct.hash_table*, i8*, %struct.symt*)* @elf_lookup_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @elf_lookup_symtab(%struct.module* %0, %struct.hash_table* %1, i8* %2, %struct.symt* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca %struct.hash_table*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.symt*, align 8
  %10 = alloca %struct.symtab_elt*, align 8
  %11 = alloca %struct.symtab_elt*, align 8
  %12 = alloca %struct.hash_table_iter, align 4
  %13 = alloca %struct.symtab_elt*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.module* %0, %struct.module** %6, align 8
  store %struct.hash_table* %1, %struct.hash_table** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.symt* %3, %struct.symt** %9, align 8
  store %struct.symtab_elt* null, %struct.symtab_elt** %10, align 8
  store %struct.symtab_elt* null, %struct.symtab_elt** %11, align 8
  %18 = load %struct.symt*, %struct.symt** %9, align 8
  %19 = icmp ne %struct.symt* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %4
  %21 = load %struct.module*, %struct.module** %6, align 8
  %22 = load %struct.symt*, %struct.symt** %9, align 8
  %23 = bitcast %struct.symt* %22 to %struct.symt_compiland*
  %24 = getelementptr inbounds %struct.symt_compiland, %struct.symt_compiland* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @source_get(%struct.module* %21, i32 %25)
  store i8* %26, i8** %14, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = call i8* @strrchr(i8* %27, i8 signext 47)
  store i8* %28, i8** %15, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %15, align 8
  %31 = icmp ne i8* %29, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %20
  %33 = load i8*, i8** %14, align 8
  store i8* %33, i8** %15, align 8
  br label %34

34:                                               ; preds = %32, %20
  br label %36

35:                                               ; preds = %4
  store i8* null, i8** %15, align 8
  store i8* null, i8** %14, align 8
  br label %36

36:                                               ; preds = %35, %34
  %37 = load %struct.hash_table*, %struct.hash_table** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @hash_table_iter_init(%struct.hash_table* %37, %struct.hash_table_iter* %12, i8* %38)
  br label %40

40:                                               ; preds = %148, %108, %74, %56, %36
  %41 = call %struct.symtab_elt* @hash_table_iter_up(%struct.hash_table_iter* %12)
  store %struct.symtab_elt* %41, %struct.symtab_elt** %13, align 8
  %42 = icmp ne %struct.symtab_elt* %41, null
  br i1 %42, label %43, label %149

43:                                               ; preds = %40
  %44 = load %struct.symtab_elt*, %struct.symtab_elt** %13, align 8
  %45 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %43
  %49 = load %struct.symtab_elt*, %struct.symtab_elt** %13, align 8
  %50 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i64 @strcmp(i8* %52, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48, %43
  br label %40

57:                                               ; preds = %48
  %58 = load %struct.symtab_elt*, %struct.symtab_elt** %13, align 8
  store %struct.symtab_elt* %58, %struct.symtab_elt** %10, align 8
  %59 = load %struct.symtab_elt*, %struct.symtab_elt** %13, align 8
  %60 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %59, i32 0, i32 2
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = icmp ne %struct.TYPE_7__* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i8*, i8** %14, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %63, %57
  %67 = load %struct.symtab_elt*, %struct.symtab_elt** %13, align 8
  %68 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %67, i32 0, i32 2
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = icmp ne %struct.TYPE_7__* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %14, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %63
  br label %40

75:                                               ; preds = %71, %66
  %76 = load %struct.symtab_elt*, %struct.symtab_elt** %13, align 8
  %77 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %76, i32 0, i32 2
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = icmp ne %struct.TYPE_7__* %78, null
  br i1 %79, label %80, label %111

80:                                               ; preds = %75
  %81 = load i8*, i8** %14, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %111

83:                                               ; preds = %80
  %84 = load %struct.module*, %struct.module** %6, align 8
  %85 = load %struct.symtab_elt*, %struct.symtab_elt** %13, align 8
  %86 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %85, i32 0, i32 2
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @source_get(%struct.module* %84, i32 %89)
  store i8* %90, i8** %17, align 8
  %91 = load i8*, i8** %17, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = call i64 @strcmp(i8* %91, i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %83
  %96 = load i8*, i8** %17, align 8
  %97 = call i8* @strrchr(i8* %96, i8 signext 47)
  store i8* %97, i8** %16, align 8
  %98 = load i8*, i8** %16, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %16, align 8
  %100 = icmp ne i8* %98, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %95
  %102 = load i8*, i8** %17, align 8
  store i8* %102, i8** %16, align 8
  br label %103

103:                                              ; preds = %101, %95
  %104 = load i8*, i8** %16, align 8
  %105 = load i8*, i8** %15, align 8
  %106 = call i64 @strcmp(i8* %104, i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %40

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109, %83
  br label %111

111:                                              ; preds = %110, %80, %75
  %112 = load %struct.symtab_elt*, %struct.symtab_elt** %11, align 8
  %113 = icmp ne %struct.symtab_elt* %112, null
  br i1 %113, label %114, label %144

114:                                              ; preds = %111
  %115 = load i8*, i8** %8, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = load %struct.module*, %struct.module** %6, align 8
  %118 = load %struct.symtab_elt*, %struct.symtab_elt** %11, align 8
  %119 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %118, i32 0, i32 2
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @source_get(%struct.module* %117, i32 %122)
  %124 = load %struct.symtab_elt*, %struct.symtab_elt** %11, align 8
  %125 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %124, i32 0, i32 1
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = load %struct.module*, %struct.module** %6, align 8
  %131 = load %struct.symtab_elt*, %struct.symtab_elt** %13, align 8
  %132 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %131, i32 0, i32 2
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @source_get(%struct.module* %130, i32 %135)
  %137 = load %struct.symtab_elt*, %struct.symtab_elt** %13, align 8
  %138 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %137, i32 0, i32 1
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = call i32 (i8*, i8*, i8*, ...) @FIXME(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %115, i8* %116, i8* %123, i32 %129, i8* %136, i32 %142)
  br label %148

144:                                              ; preds = %111
  %145 = load %struct.symtab_elt*, %struct.symtab_elt** %13, align 8
  store %struct.symtab_elt* %145, %struct.symtab_elt** %11, align 8
  %146 = load %struct.symtab_elt*, %struct.symtab_elt** %13, align 8
  %147 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %146, i32 0, i32 0
  store i32 1, i32* %147, align 8
  br label %148

148:                                              ; preds = %144, %114
  br label %40

149:                                              ; preds = %40
  %150 = load %struct.symtab_elt*, %struct.symtab_elt** %11, align 8
  %151 = icmp ne %struct.symtab_elt* %150, null
  br i1 %151, label %165, label %152

152:                                              ; preds = %149
  %153 = load %struct.symtab_elt*, %struct.symtab_elt** %10, align 8
  store %struct.symtab_elt* %153, %struct.symtab_elt** %11, align 8
  %154 = icmp ne %struct.symtab_elt* %153, null
  br i1 %154, label %165, label %155

155:                                              ; preds = %152
  %156 = load %struct.module*, %struct.module** %6, align 8
  %157 = getelementptr inbounds %struct.module, %struct.module* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @debugstr_w(i32 %159)
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i8*
  %163 = load i8*, i8** %8, align 8
  %164 = call i32 (i8*, i8*, i8*, ...) @FIXME(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %162, i8* %163)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  br label %169

165:                                              ; preds = %152, %149
  %166 = load %struct.symtab_elt*, %struct.symtab_elt** %11, align 8
  %167 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %166, i32 0, i32 1
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  store %struct.TYPE_9__* %168, %struct.TYPE_9__** %5, align 8
  br label %169

169:                                              ; preds = %165, %155
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  ret %struct.TYPE_9__* %170
}

declare dso_local i8* @source_get(%struct.module*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @hash_table_iter_init(%struct.hash_table*, %struct.hash_table_iter*, i8*) #1

declare dso_local %struct.symtab_elt* @hash_table_iter_up(%struct.hash_table_iter*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @FIXME(i8*, i8*, i8*, ...) #1

declare dso_local i32 @debugstr_w(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
