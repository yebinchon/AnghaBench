; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry_db.c_registry_db_save.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry_db.c_registry_db_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@registry = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s.old\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s.tmp\00", align 1
@D_REGISTRY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Registry: Creating file '%s'\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Registry: Cannot create file: %s\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Saving all machines\00", align 1
@registry_machine_save = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [58 x i8] c"Registry: Cannot save registry machines - return value %d\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Registry: saving machines took %d bytes\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Saving all persons\00", align 1
@registry_person_save = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [57 x i8] c"Registry: Cannot save registry persons - return value %d\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Registry: saving persons took %d bytes\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"T\09%016llx\09%016llx\09%016llx\09%016llx\09%016llx\09%016llx\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [31 x i8] c"Registry: Removing old db '%s'\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [47 x i8] c"Registry: cannot remove old registry file '%s'\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"Registry: Link current db '%s' to .old: '%s'\00", align 1
@.str.15 = private unnamed_addr constant [68 x i8] c"Registry: cannot move file '%s' to '%s'. Saving registry DB failed!\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Registry: removing db '%s'\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"Registry: linking tmp db '%s' to active db '%s'\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"Registry: linking old db '%s' to active db '%s'\00", align 1
@.str.19 = private unnamed_addr constant [80 x i8] c"Registry: cannot move file '%s' to '%s'. Recovering the old registry DB failed!\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"Registry: removing tmp db '%s'\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"Registry: cannot remove tmp registry file '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @registry_db_save() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 10), align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %171

16:                                               ; preds = %0
  %17 = call i32 (...) @registry_db_should_be_saved()
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 -2, i32* %1, align 4
  br label %171

24:                                               ; preds = %16
  %25 = call i32 (...) @error_log_limit_unlimited()
  %26 = load i32, i32* @FILENAME_MAX, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %2, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %3, align 8
  %31 = load i32, i32* @FILENAME_MAX, align 4
  %32 = add nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %4, align 8
  %35 = load i32, i32* @FILENAME_MAX, align 4
  %36 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 0), align 8
  %37 = call i32 @snprintfz(i8* %34, i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @FILENAME_MAX, align 4
  %39 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 0), align 8
  %40 = call i32 @snprintfz(i8* %30, i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @D_REGISTRY, align 4
  %42 = call i32 (i32, i8*, ...) @debug(i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %43 = call i32* @fopen(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %43, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %24
  %47 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %30)
  %48 = call i32 (...) @error_log_limit_reset()
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %169

49:                                               ; preds = %24
  %50 = load i32, i32* @D_REGISTRY, align 4
  %51 = call i32 (i32, i8*, ...) @debug(i32 %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 9), align 4
  %53 = load i32, i32* @registry_machine_save, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @dictionary_get_all(i32 %52, i32 %53, i32* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  %60 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i32 %59)
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @fclose(i32* %61)
  %63 = call i32 (...) @error_log_limit_reset()
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %169

65:                                               ; preds = %49
  %66 = load i32, i32* @D_REGISTRY, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (i32, i8*, ...) @debug(i32 %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @D_REGISTRY, align 4
  %70 = call i32 (i32, i8*, ...) @debug(i32 %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 8), align 8
  %72 = load i32, i32* @registry_person_save, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @dictionary_get_all(i32 %71, i32 %72, i32* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %65
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0), i32 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @fclose(i32* %80)
  %82 = call i32 (...) @error_log_limit_reset()
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %169

84:                                               ; preds = %65
  %85 = load i32, i32* @D_REGISTRY, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 (i32, i8*, ...) @debug(i32 %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i32 %86)
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 7), align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 6), align 8
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 5), align 8
  %92 = add nsw i64 %91, 1
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 4), align 8
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 3), align 4
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 2), align 8
  %96 = call i32 @fprintf(i32* %88, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0), i32 %89, i32 %90, i64 %92, i32 %93, i32 %94, i32 %95)
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @fclose(i32* %97)
  store i64 0, i64* @errno, align 8
  %99 = load i32, i32* @D_REGISTRY, align 4
  %100 = call i32 (i32, i8*, ...) @debug(i32 %99, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* %34)
  %101 = call i32 @unlink(i8* %34)
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %109

103:                                              ; preds = %84
  %104 = load i64, i64* @errno, align 8
  %105 = load i64, i64* @ENOENT, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i8* %34)
  br label %109

109:                                              ; preds = %107, %103, %84
  %110 = load i32, i32* @D_REGISTRY, align 4
  %111 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 0), align 8
  %112 = call i32 (i32, i8*, ...) @debug(i32 %110, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i8* %111, i8* %34)
  %113 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 0), align 8
  %114 = call i32 @link(i8* %113, i8* %34)
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = load i64, i64* @errno, align 8
  %118 = load i64, i64* @ENOENT, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 0), align 8
  %122 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.15, i64 0, i64 0), i8* %121, i8* %34)
  br label %167

123:                                              ; preds = %116, %109
  %124 = load i32, i32* @D_REGISTRY, align 4
  %125 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 0), align 8
  %126 = call i32 (i32, i8*, ...) @debug(i32 %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i8* %125)
  %127 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 0), align 8
  %128 = call i32 @unlink(i8* %127)
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %137

130:                                              ; preds = %123
  %131 = load i64, i64* @errno, align 8
  %132 = load i64, i64* @ENOENT, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 0), align 8
  %136 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %134, %130, %123
  %138 = load i32, i32* @D_REGISTRY, align 4
  %139 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 0), align 8
  %140 = call i32 (i32, i8*, ...) @debug(i32 %138, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i64 0, i64 0), i8* %30, i8* %139)
  %141 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 0), align 8
  %142 = call i32 @link(i8* %30, i8* %141)
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %157

144:                                              ; preds = %137
  %145 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 0), align 8
  %146 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.15, i64 0, i64 0), i8* %30, i8* %145)
  %147 = load i32, i32* @D_REGISTRY, align 4
  %148 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 0), align 8
  %149 = call i32 (i32, i8*, ...) @debug(i32 %147, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i64 0, i64 0), i8* %34, i8* %148)
  %150 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 0), align 8
  %151 = call i32 @link(i8* %34, i8* %150)
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %153, label %156

153:                                              ; preds = %144
  %154 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 0), align 8
  %155 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.19, i64 0, i64 0), i8* %34, i8* %154)
  br label %156

156:                                              ; preds = %153, %144
  br label %166

157:                                              ; preds = %137
  %158 = load i32, i32* @D_REGISTRY, align 4
  %159 = call i32 (i32, i8*, ...) @debug(i32 %158, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i8* %30)
  %160 = call i32 @unlink(i8* %30)
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i64 0, i64 0), i8* %30)
  br label %164

164:                                              ; preds = %162, %157
  %165 = call i32 (...) @registry_log_recreate()
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @registry, i32 0, i32 1), align 8
  br label %166

166:                                              ; preds = %164, %156
  br label %167

167:                                              ; preds = %166, %120
  %168 = call i32 (...) @error_log_limit_reset()
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %169

169:                                              ; preds = %167, %77, %58, %46
  %170 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %170)
  br label %171

171:                                              ; preds = %169, %23, %15
  %172 = load i32, i32* %1, align 4
  ret i32 %172
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @registry_db_should_be_saved(...) #1

declare dso_local i32 @error_log_limit_unlimited(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i8*) #1

declare dso_local i32 @debug(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @error_log_limit_reset(...) #1

declare dso_local i32 @dictionary_get_all(i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @link(i8*, i8*) #1

declare dso_local i32 @registry_log_recreate(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
