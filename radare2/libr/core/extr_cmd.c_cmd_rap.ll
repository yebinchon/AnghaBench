; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_cmd_rap.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_cmd_rap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"TODO: list connections in json\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@help_msg_equalg = common dso_local global i32 0, align 4
@help_msg_equalh = common dso_local global i32 0, align 4
@help_msg_equal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmd_rap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_rap(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  switch i32 %12, label %146 [
    i32 0, label %13
    i32 106, label %16
    i32 33, label %18
    i32 36, label %55
    i32 43, label %60
    i32 45, label %65
    i32 60, label %70
    i32 61, label %75
    i32 103, label %80
    i32 104, label %100
    i32 72, label %120
    i32 63, label %142
  ]

13:                                               ; preds = %2
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = call i32 @r_core_rtr_list(%struct.TYPE_12__* %14)
  br label %150

16:                                               ; preds = %2
  %17 = call i32 @eprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %150

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 61
  br i1 %23, label %24, label %39

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @r_str_bool(i32 %36)
  %38 = call i32 @r_cons_println(i32 %37)
  br label %54

39:                                               ; preds = %18
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = call i8* @r_io_system(i32 %42, i8* %44)
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @r_cons_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @free(i8* %51)
  br label %53

53:                                               ; preds = %48, %39
  br label %54

54:                                               ; preds = %53, %24
  br label %150

55:                                               ; preds = %2
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = call i32 @aliascmd(%struct.TYPE_12__* %56, i8* %58)
  br label %150

60:                                               ; preds = %2
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = call i32 @r_core_rtr_add(%struct.TYPE_12__* %61, i8* %63)
  br label %150

65:                                               ; preds = %2
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = call i32 @r_core_rtr_remove(%struct.TYPE_12__* %66, i8* %68)
  br label %150

70:                                               ; preds = %2
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = call i32 @r_core_rtr_pushout(%struct.TYPE_12__* %71, i8* %73)
  br label %150

75:                                               ; preds = %2
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = call i32 @r_core_rtr_session(%struct.TYPE_12__* %76, i8* %78)
  br label %150

80:                                               ; preds = %2
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 63
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %88 = load i32, i32* @help_msg_equalg, align 4
  %89 = call i32 @r_core_cmd_help(%struct.TYPE_12__* %87, i32 %88)
  br label %99

90:                                               ; preds = %80
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = call i32 @getArg(i8 signext %94, i8 signext 103)
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = call i32 @r_core_rtr_gdb(%struct.TYPE_12__* %91, i32 %95, i8* %97)
  br label %99

99:                                               ; preds = %90, %86
  br label %150

100:                                              ; preds = %2
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 63
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %108 = load i32, i32* @help_msg_equalh, align 4
  %109 = call i32 @r_core_cmd_help(%struct.TYPE_12__* %107, i32 %108)
  br label %119

110:                                              ; preds = %100
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = load i8, i8* %113, align 1
  %115 = call i32 @getArg(i8 signext %114, i8 signext 104)
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  %118 = call i32 @r_core_rtr_http(%struct.TYPE_12__* %111, i32 %115, i8 signext 104, i8* %117)
  br label %119

119:                                              ; preds = %110, %106
  br label %150

120:                                              ; preds = %2
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 63
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %128 = load i32, i32* @help_msg_equalh, align 4
  %129 = call i32 @r_core_cmd_help(%struct.TYPE_12__* %127, i32 %128)
  br label %141

130:                                              ; preds = %120
  %131 = load i8*, i8** %4, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = call i8* @r_str_trim_ro(i8* %132)
  store i8* %133, i8** %7, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %135 = load i8*, i8** %4, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  %137 = load i8, i8* %136, align 1
  %138 = call i32 @getArg(i8 signext %137, i8 signext 72)
  %139 = load i8*, i8** %7, align 8
  %140 = call i32 @r_core_rtr_http(%struct.TYPE_12__* %134, i32 %138, i8 signext 72, i8* %139)
  br label %141

141:                                              ; preds = %130, %126
  br label %150

142:                                              ; preds = %2
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %144 = load i32, i32* @help_msg_equal, align 4
  %145 = call i32 @r_core_cmd_help(%struct.TYPE_12__* %143, i32 %144)
  br label %150

146:                                              ; preds = %2
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %148 = load i8*, i8** %4, align 8
  %149 = call i32 @r_core_rtr_cmd(%struct.TYPE_12__* %147, i8* %148)
  br label %150

150:                                              ; preds = %146, %142, %141, %119, %99, %75, %70, %65, %60, %55, %54, %16, %13
  ret i32 0
}

declare dso_local i32 @r_core_rtr_list(%struct.TYPE_12__*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_cons_println(i32) #1

declare dso_local i32 @r_str_bool(i32) #1

declare dso_local i8* @r_io_system(i32, i8*) #1

declare dso_local i32 @r_cons_printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @aliascmd(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @r_core_rtr_add(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @r_core_rtr_remove(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @r_core_rtr_pushout(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @r_core_rtr_session(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @r_core_rtr_gdb(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @getArg(i8 signext, i8 signext) #1

declare dso_local i32 @r_core_rtr_http(%struct.TYPE_12__*, i32, i8 signext, i8*) #1

declare dso_local i8* @r_str_trim_ro(i8*) #1

declare dso_local i32 @r_core_rtr_cmd(%struct.TYPE_12__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
