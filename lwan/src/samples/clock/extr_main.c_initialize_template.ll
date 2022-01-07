; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/clock/extr_main.c_initialize_template.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/clock/extr_main.c_initialize_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initialize_template.index = internal constant [1138 x i8] c"<html>\0A<head>\0A<style>\0Abody {\0A   background:black;\0A   height:100%;\0A   text-align:center;\0A   border:0;\0A   margin:0;\0A   padding:0;\0A   font-family: sans-serif;\0A}\0Aimg {\0A   image-rendering: pixelated;\0A   image-rendering: -moz-crisp-edges;\0A   image-rendering: crisp-edges;\0A}\0A#styles {\0A   color: #444;\0A   top: 0;\0A   position: absolute;\0A   padding: 16px;\0A   left: calc(50% - 100px - 16px);\0A   width: 250px;\0A}\0A#styles a, #styles a:visited, #lwan a, #lwan a:visited { color: #666; }\0A#lwan {\0A   color: #555;\0A   top: calc(100% - 40px);\0A   position: absolute;\0A   height: 20px;\0A   font-size: 75%;\0A   width: 300px;\0A}\0A</style>\0A<meta http-equiv=\22Refresh\22 content=\223600;url=/{{variant}}\22>\0A<title>{{title}}</title>\0A</head>\0A<body>\0A  <div id=\22lwan\22>\0A    Powered by the <a href=\22https://lwan.ws\22>Lwan</a> web server.\0A  </div>\0A  <table height=\22100%\22 width=\22100%\22>\0A  <tr>\0A    <td align=\22center\22 valign=\22middle\22>\0A    <div><img src=\22/{{variant}}.gif\22 width=\22{{width}}px\22></div>\0A    </td>\0A  </tr>\0A  </table>\0A  <div id=\22styles\22>\0A    Styles: <a href=\22/clock\22>Digital</a> &middot; <a href=\22/dali\22>Dali</a> &middot; <a href=\22/blocks\22>Blocks</a>\0A  </div>\0A</body>\0A</html>\00", align 16
@index_desc = common dso_local global i32 0, align 4
@LWAN_TPL_FLAG_CONST_TEMPLATE = common dso_local global i32 0, align 4
@index_tpl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not compile template\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @initialize_template, i8* null }]
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initialize_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_template() #0 {
  %1 = load i32, i32* @index_desc, align 4
  %2 = load i32, i32* @LWAN_TPL_FLAG_CONST_TEMPLATE, align 4
  %3 = call i32 @lwan_tpl_compile_string_full(i8* getelementptr inbounds ([1138 x i8], [1138 x i8]* @initialize_template.index, i64 0, i64 0), i32 %1, i32 %2)
  store i32 %3, i32* @index_tpl, align 4
  %4 = load i32, i32* @index_tpl, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 @lwan_status_critical(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  ret void
}

declare dso_local i32 @lwan_tpl_compile_string_full(i8*, i32, i32) #1

declare dso_local i32 @lwan_status_critical(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
